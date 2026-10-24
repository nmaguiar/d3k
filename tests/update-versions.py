#!/usr/bin/env python3
"""Deterministic lock-refresh tests; no network, Docker daemon or source edits."""
import importlib.util
import gzip
import json
import os
from pathlib import Path
import tempfile
import subprocess
import sys
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parent.parent
sys.dont_write_bytecode = True
spec = importlib.util.spec_from_file_location("update_versions", ROOT / "scripts/update-versions.py")
updater = importlib.util.module_from_spec(spec)
spec.loader.exec_module(updater)
PACKAGE_INDEX = updater.package_index
INDEX = json.dumps({"schemaVersion": 2, "manifests": [
    {"platform": {"os": "linux", "architecture": arch}} for arch in ("amd64", "arm64")
]}).encode()


class RefreshTests(unittest.TestCase):
    def setUp(self):
        quiet = patch.object(updater, "print", create=True)
        quiet.start()
        self.addCleanup(quiet.stop)
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        text = (ROOT / "versions.yaml").read_text()
        values = updater.read_lock(text)
        # Use versions independent of future repository dependency updates.
        replacements = {
            "DOCKER_VERSION": "5:29.9.1-1~debian.13~trixie",
            "CONTAINERD_VERSION": "2.4.2-2~debian.13~trixie",
            "COMPOSE_VERSION": "5.6.0-1~debian.13~trixie",
            "BUILDX_GO_VERSION": "go1.26.9",
            "BUILDX_GO_BASE": "golang:1.26.9-bookworm@sha256:" + "a" * 64,
        }
        self.text = updater.render(text, replacements)
        (self.root / "versions.yaml").write_text(self.text)
        self.values = updater.read_lock(self.text)
        self.dockerfile = "# fixture\nARG BASE_IMAGE=" + self.values["DEBIAN_BASE"] + "\nARG BUILDX_GO_BASE=" + self.values["BUILDX_GO_BASE"] + "\n"
        (self.root / "Dockerfile").write_text(self.dockerfile)
        self.packages = {}
        for key, packages in updater.PACKAGES.items():
            for package in packages:
                self.packages[package] = {self.values[key]}
        for package in updater.PACKAGES["DOCKER_VERSION"]:
            self.packages[package].update({"5:29.9.2-1~debian.13~trixie", "5:30.0.0-1~debian.13~trixie"})
        self.packages["containerd.io"].add("2.4.2-3~debian.13~trixie")
        self.packages["docker-compose-plugin"].add("5.6.1-1~debian.13~trixie")
        self.go = [{"version": name, "stable": stable} for name, stable in (
            ("go1.26.9", True), ("go1.26.10", True), ("go1.27.3", True),
            ("go1.26.11", False))]
        for name, replacement in (
            ("package_index", lambda arch: self.packages),
            ("fetch", lambda url: json.dumps(self.go).encode()),
        ):
            mock = patch.object(updater, name, side_effect=replacement)
            mock.start()
            self.addCleanup(mock.stop)
        mock = patch.object(updater.subprocess, "check_output", return_value=INDEX)
        self.skopeo = mock.start()
        self.addCleanup(mock.stop)

    def test_compatible_updates_and_preserved_baselines(self):
        updater.refresh(self.root, self.root / "evidence")
        result = updater.read_lock((self.root / "versions.yaml").read_text())
        self.assertEqual(result["DOCKER_VERSION"], "5:29.9.2-1~debian.13~trixie")
        self.assertEqual(result["CONTAINERD_VERSION"], "2.4.2-3~debian.13~trixie")
        self.assertEqual(result["COMPOSE_VERSION"], "5.6.1-1~debian.13~trixie")
        self.assertEqual(result["BUILDX_GO_VERSION"], "go1.26.10")
        self.assertIn("golang:1.26.10-bookworm@sha256:", result["BUILDX_GO_BASE"])
        moving = set(updater.IMAGES) | set(updater.PACKAGES) | {"BUILDX_GO_VERSION"}
        for key, value in self.values.items():
            if key not in moving:
                self.assertEqual(result[key], value, key)
        self.assertIn("ARG BASE_IMAGE=" + result["DEBIAN_BASE"], (self.root / "Dockerfile").read_text())
        self.assertIn("ARG BUILDX_GO_BASE=" + result["BUILDX_GO_BASE"], (self.root / "Dockerfile").read_text())
        self.assertEqual((self.root / "evidence/versions.yaml").read_text(), (self.root / "versions.yaml").read_text())
        self.assertEqual(json.loads((self.root / "evidence/refresh.json").read_text())["status"], "UPDATED")

    def assert_unchanged(self):
        self.assertEqual((self.root / "versions.yaml").read_text(), self.text)
        self.assertEqual((self.root / "Dockerfile").read_text(), self.dockerfile)
        self.assertFalse((self.root / "evidence").exists())

    def test_lookup_failure_keeps_both_files(self):
        self.skopeo.side_effect = OSError("fixture registry unavailable")
        with self.assertRaises(OSError):
            updater.refresh(self.root, self.root / "evidence")
        self.assert_unchanged()

    def test_requires_both_platforms(self):
        self.skopeo.return_value = b'{"manifests":[{"platform":{"os":"linux","architecture":"amd64"}}]}'
        with self.assertRaisesRegex(ValueError, "both native platforms"):
            updater.refresh(self.root, self.root / "evidence")
        self.assert_unchanged()

    def test_package_version_must_exist_for_all_packages_and_architectures(self):
        arm = {key: set(value) for key, value in self.packages.items()}
        arm["docker-ce-rootless-extras"].remove("5:29.9.2-1~debian.13~trixie")
        with patch.object(updater, "package_index", side_effect=[self.packages, arm]):
            result = updater.resolve(self.values)
        self.assertEqual(result["DOCKER_VERSION"], self.values["DOCKER_VERSION"])

    def test_compressed_package_index_and_continuation_fields(self):
        data = gzip.compress(b'Package: docker-ce\nVersion: 5:29.9.2-1~debian.13~trixie\nDescription: fixture\n continuation: text\n\nPackage: docker-ce\nVersion: 5:29.9.1-1~debian.13~trixie\n')
        # Exercise the real parser rather than the per-test package resolver.
        with patch.object(updater, "fetch", return_value=data):
            packages = PACKAGE_INDEX("amd64")
        self.assertEqual(packages["docker-ce"], {
            "5:29.9.2-1~debian.13~trixie", "5:29.9.1-1~debian.13~trixie"})

    def test_no_downgrade_when_current_package_unavailable(self):
        self.packages["docker-compose-plugin"] = {"5.5.9-1~debian.13~trixie"}
        with self.assertRaisesRegex(ValueError, "No compatible package"):
            updater.refresh(self.root, self.root / "evidence")
        self.assert_unchanged()

    def test_concurrent_edit_is_preserved(self):
        original_resolve = updater.resolve
        def concurrent(values):
            result = original_resolve(values)
            (self.root / "versions.yaml").write_text(self.text + "# concurrent edit\n")
            return result
        with patch.object(updater, "resolve", side_effect=concurrent):
            with self.assertRaisesRegex(ValueError, "File changed"):
                updater.refresh(self.root, self.root / "evidence")
        self.assertTrue((self.root / "versions.yaml").read_text().endswith("# concurrent edit\n"))
        self.assertEqual((self.root / "Dockerfile").read_text(), self.dockerfile)

    def run_build(self, *args, fail_refresh=False):
        scripts = self.root / "scripts"
        scripts.mkdir()
        for name in ("build.sh", "lock.sh"):
            (scripts / name).write_text((ROOT / "scripts" / name).read_text())
        binaries = self.root / "bin"
        binaries.mkdir()
        (binaries / "python3").write_text('#!/bin/sh\necho refresh > "$D3K_REFRESH_LOG"\nexit "${D3K_REFRESH_FAIL:-0}"\n')
        (binaries / "docker").write_text('#!/bin/sh\nprintf "%s\\n" "$@" > "$D3K_DOCKER_ARGS"\n')
        for path in binaries.iterdir():
            path.chmod(0o755)
        env = dict(os.environ, PATH=str(binaries) + os.pathsep + os.environ["PATH"],
                   D3K_REFRESH_LOG=str(self.root / "refresh-log"),
                   D3K_DOCKER_ARGS=str(self.root / "docker-args"),
                   D3K_REFRESH_FAIL="19" if fail_refresh else "0")
        return subprocess.run(["bash", str(scripts / "build.sh"), *args], env=env,
                              capture_output=True, text=True)

    def test_default_build_refreshes_before_docker(self):
        result = self.run_build("-t", "fixture:build")
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertTrue((self.root / "refresh-log").exists())
        self.assertIn("fixture:build", (self.root / "docker-args").read_text())

    def test_locked_build_preserves_argument_boundaries_and_skips_refresh(self):
        result = self.run_build("--locked", "--label", "example=a b", "--build-arg", "EMPTY=")
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertFalse((self.root / "refresh-log").exists())
        arguments = (self.root / "docker-args").read_text().splitlines()
        self.assertNotIn("--locked", arguments)
        self.assertIn("example=a b", arguments)
        self.assertEqual(arguments[-1], ".")

    def test_failed_refresh_stops_the_build(self):
        result = self.run_build(fail_refresh=True)
        self.assertEqual(result.returncode, 19)
        self.assertFalse((self.root / "docker-args").exists())


if __name__ == "__main__":
    unittest.main()
