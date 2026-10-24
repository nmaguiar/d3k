#!/usr/bin/env python3
"""Refresh build inputs within their selected release lines; keep baselines fixed.

Only the Python standard library and skopeo are required. Resolve every input
before changing files; failed discovery leaves the existing lock untouched.
"""
import argparse
import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import tempfile
import urllib.request

# These references describe historical controls, not moving build dependencies.
# Untagged SOCKS_IMAGE/TEST_WEB_IMAGE have no selected update tag.
IMAGES = (
    "DEBIAN_BASE", "BUILDX_GO_BASE", "K3S_IMAGE", "REGISTRY_IMAGE",
    "K3D_PROXY_IMAGE", "K3D_TOOLS_IMAGE", "TRIVY_IMAGE",
)
PACKAGES = {
    "DOCKER_VERSION": ("docker-ce", "docker-ce-cli", "docker-ce-rootless-extras"),
    "CONTAINERD_VERSION": ("containerd.io",),
    "COMPOSE_VERSION": ("docker-compose-plugin",),
}


def fetch(url):
    request = urllib.request.Request(url, headers={"User-Agent": "d3k-lock-refresh"})
    with urllib.request.urlopen(request, timeout=120) as response:
        return response.read()


def read_lock(text):
    values = {}
    for line in text.splitlines():
        match = re.fullmatch(r"([A-Z][A-Za-z0-9_]*): (.+)", line)
        if match:
            key, value = match.groups()
            if key in values:
                raise ValueError("Duplicate lock key: " + key)
            values[key] = value
    return values


def version(value):
    """Compare the numeric upstream version and Debian package revision."""
    match = re.fullmatch(r"(?:\d+:)?(\d+)\.(\d+)\.(\d+)(?:-(\d+))?(?:~.*)?", value)
    if not match:
        raise ValueError("Unsupported stable version: " + value)
    return tuple(int(part or 0) for part in match.groups())


def package_index(arch):
    url = "https://download.docker.com/linux/debian/dists/trixie/stable/binary-" + arch + "/Packages.gz"
    result = {}
    for paragraph in gzip.decompress(fetch(url)).decode().split("\n\n"):
        fields = dict(line.split(": ", 1) for line in paragraph.splitlines()
                      if line and not line[0].isspace() and ": " in line)
        if "Package" in fields and "Version" in fields:
            result.setdefault(fields["Package"], set()).add(fields["Version"])
    return result


def resolve(values):
    updated = dict(values)
    indexes = [package_index(arch) for arch in ("amd64", "arm64")]
    for key, packages in PACKAGES.items():
        current = version(values[key])
        available = [index.get(package, set()) for index in indexes for package in packages]
        common = set.intersection(*available)
        candidates = [item for item in common
                      if version(item)[:2] == current[:2] and version(item) >= current]
        if not candidates:
            raise ValueError("No compatible package version on both architectures: " + key)
        updated[key] = max(candidates, key=version)

    # Select the latest stable patch of the existing Go major/minor. Do not
    # change the buildx source version, revision or vendored dependencies.
    current_go = version(values["BUILDX_GO_VERSION"].removeprefix("go"))
    releases = json.loads(fetch("https://go.dev/dl/?mode=json&include=all"))
    candidates = []
    for release in releases:
        if release.get("stable"):
            name = release["version"].removeprefix("go")
            if version(name)[:2] == current_go[:2] and version(name) >= current_go:
                candidates.append(name)
    if not candidates:
        raise ValueError("No compatible stable Go patch found")
    go = max(candidates, key=version)
    updated["BUILDX_GO_VERSION"] = "go" + go
    base = re.sub(r"(?<=:)\d+\.\d+\.\d+(?=-)", go, values["BUILDX_GO_BASE"])
    if base == values["BUILDX_GO_BASE"] and go != values["BUILDX_GO_VERSION"].removeprefix("go"):
        raise ValueError("Unrecognized Go builder tag")
    updated["BUILDX_GO_BASE"] = base

    for key in IMAGES:
        tagged = updated[key].split("@", 1)[0]
        if ":" not in tagged.rsplit("/", 1)[-1]:
            raise ValueError("Explicit image tag required: " + key)
        raw = subprocess.check_output(["skopeo", "inspect", "--raw", "docker://" + tagged], timeout=180)
        index = json.loads(raw)
        # The same lock is used by both native candidate builds.
        platforms = {(item.get("platform", {}).get("os"), item.get("platform", {}).get("architecture"))
                     for item in index.get("manifests", [])}
        if not {("linux", "amd64"), ("linux", "arm64")} <= platforms:
            raise ValueError("Image index lacks both native platforms: " + tagged)
        updated[key] = tagged + "@sha256:" + hashlib.sha256(raw).hexdigest()
    return updated


def render(text, changes):
    for key, value in changes.items():
        text, count = re.subn(r"^" + re.escape(key) + r": .+$", lambda _: key + ": " + value,
                             text, flags=re.MULTILINE)
        if count != 1:
            raise ValueError("Expected exactly one lock entry: " + key)
    return text


def refresh(root, evidence):
    paths = [root / "versions.yaml", root / "Dockerfile"]
    originals = {path: path.read_text() for path in paths}
    values = read_lock(originals[paths[0]])
    updated = resolve(values)
    changes = {key: value for key, value in updated.items() if value != values[key]}
    outputs = {paths[0]: render(originals[paths[0]], changes)}
    dockerfile = originals[paths[1]]
    for key, arg in (("DEBIAN_BASE", "BASE_IMAGE"), ("BUILDX_GO_BASE", "BUILDX_GO_BASE")):
        old = "ARG " + arg + "=" + values[key]
        if dockerfile.splitlines().count(old) != 1:
            raise ValueError("Dockerfile default does not match the existing lock: " + arg)
        dockerfile = dockerfile.replace(old, "ARG " + arg + "=" + updated[key], 1)
    outputs[paths[1]] = dockerfile
    report = {"status": "UPDATED" if changes else "UNCHANGED", "changes": {
        key: {"before": values[key], "after": value} for key, value in changes.items()
    }, "scope": "Docker/Compose/containerd compatible patches, Go compatible patches, existing image tags"}
    # Reject concurrent edits instead of overwriting another task's changes.
    for path, original in originals.items():
        if path.read_text() != original:
            raise ValueError("File changed during dependency discovery: " + str(path))
    staged = {}
    try:
        for path, content in outputs.items():
            if content != originals[path]:
                fd, name = tempfile.mkstemp(prefix=path.name + ".", dir=path.parent)
                staged[path] = Path(name)
                with os.fdopen(fd, "w") as stream:
                    stream.write(content)
                os.chmod(name, path.stat().st_mode & 0o777)
        for path, temporary in staged.items():
            os.replace(temporary, path)
    finally:
        for temporary in staged.values():
            temporary.unlink(missing_ok=True)
    evidence.mkdir(parents=True, exist_ok=True)
    (evidence / "refresh.json").write_text(json.dumps(report, indent=2) + "\n")
    for path in paths:
        (evidence / path.name).write_text(outputs[path])
    for key, value in changes.items():
        print(key + ": " + values[key] + " -> " + value)
    print(report["status"] + ": dependency lock and Dockerfile defaults")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parent.parent)
    parser.add_argument("--evidence", type=Path)
    args = parser.parse_args()
    root = args.root.resolve()
    try:
        refresh(root, args.evidence or root / ".evidence" / "dependencies")
    except (ValueError, OSError, subprocess.SubprocessError) as error:
        print("d3k: dependency refresh failed: " + str(error), file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
