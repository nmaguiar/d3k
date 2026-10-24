# Dependency refresh before builds

`bash scripts/build.sh` refreshes supported dependency pins before invoking
Docker. It needs Python 3.9+, `skopeo`, and network access on the build host.
The refresh updates `versions.yaml` and synchronizes the corresponding base
image defaults in `Dockerfile`. These are local changes; it does not commit or
push them.

```bash
# Refresh, then build using the resolved pins.
bash scripts/build.sh --platform linux/arm64 -t d3k-local:candidate

# Reproduce the existing lock without dependency discovery.
# --locked must be the first argument.
bash scripts/build.sh --locked --platform linux/arm64 -t d3k-local:locked

# Refresh the files without building.
python3 scripts/update-versions.py
```

The automatic refresh covers:

- Docker CE, CLI and rootless extras: the highest common package version on
  amd64 and arm64 within the locked upstream major/minor line.
- Compose and containerd: compatible package patches and Debian package
  revisions available on both architectures.
- The buildx Go compiler: stable patches within its existing major/minor line,
  with a freshly resolved digest for the matching builder image tag.
- Digests for the selected Debian, K3s, registry, k3d helper and Trivy image
  tags. Each resolved image index must support both linux/amd64 and linux/arm64.

New image release tags, buildx source versions/revisions, k3d/Helm/kubectl
binaries, JVM downloads and slirp4netns
remain explicit changes. Their versions and checksums are not guessed or
silently relocked. Untagged SOCKS and test-fixture images remain pinned.
Historical Ubuntu controls and published comparison/rollback references also
remain pinned so comparison targets do not move with the candidate.

OpenAF follows nightly independently of lock refreshes, including `--locked`
builds. Its daily artifacts have no release checksum/version pins; their URLs,
download time, actual hashes and installed version are recorded in the image.
Use `--no-cache` to fetch the current nightly rather than reuse a cached layer.

oPacks also follow current upstream releases without d3k version/checksum pins.
Their own file-integrity verification remains enabled. Installed versions are
recorded in `/usr/share/d3k/opacks.txt`; Kube's actual JAR hashes are recorded in
`/usr/share/d3k/kube-jars.sha256`. Kube is installed directly from its official
GitHub source because its packaged mirror can lag dependency fixes. Cached
builds can reuse earlier packages; `--no-cache` refreshes these downloads too.
Kube's installation uses a scoped single-processor JVM setting to avoid remote
copy races in nightly OpenAF, followed by an explicit upstream-manifest check.

All lookups must succeed before source files change. Unavailable compatible
packages, a registry failure, an unsupported image platform, or inconsistent
Dockerfile defaults stop the refresh and build. Existing concurrent edits are
checked before applying the result. Successful resolution retains
`refresh.json`, `versions.yaml` and `Dockerfile` under `.evidence/dependencies/`.
APT signature verification, download checksum verification, scans and runtime
gates still run during normal candidate validation.

## GitHub Actions

Scheduled builds refresh dependencies automatically. Manual runs default to
refreshing and expose a `refresh_dependencies` checkbox to select a locked run.
Push and pull-request runs validate the checked-in pins.

A single `build-inputs` job resolves and retains the lock and matching
Dockerfile. Both architecture jobs download that exact snapshot, rather than
resolving mutable tags independently. The `build-inputs-RUN_ID` artifact
contains the resolved files and change report; refreshed builds rerun the fast
checks before either native build starts. CI does not commit the changes back
to the repository. Download the reviewed snapshot to adopt its pins locally.

Calling `docker build` or `docker buildx build` directly bypasses the local
wrapper. Run `python3 scripts/update-versions.py` first when using those commands
outside this workflow.
