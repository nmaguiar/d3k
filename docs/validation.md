# Validation, limits, and rollback

This is a **gated Debian rootful candidate**, not a completed three-phase
migration or a released image. Rootful remains the default. Rootless is
experimental and fails unmet prerequisites explicitly; external is reserved.
The latest recorded native candidate passed its implemented gates; see the
[immutable baseline and remaining checks](baseline-39172295738.md).

## Implemented behavior

- Signed Debian Docker packages and digest/checksum-locked build/startup inputs.
- A normal UID/GID 1001 developer account, preserved command paths and aliases,
  argument-safe Compose compatibility, and classic rootful vfs configuration.
- Bounded, idempotent startup/restart with a tiny init; no systemd assumption,
  caller-argument reinterpretation, login restart scripts, or latest-K3s lookup.
- Shared boolean/environment resolution, noninteractive SSH configuration,
  component readiness/JSON output, explicit failure states and streamed logs.
- Supplied SSH keys/passwords and per-instance host keys; no embedded password.
- Native candidate CI without publishing credentials, OCI artifact retention,
  imported platform/configuration/rootfs checks, scans, and a conservative
  new-fixable-findings gate.
- Existing OpenAF/Badgen/YAML/Markdown reports with pinned Trivy and retained raw
  output/database identity. Full-image publication is withheld.

The checkout audit found no documented dependence on GID 0 or writable passwd.
The candidate uses a dedicated group and normal passwd permissions. It retains
unrestricted sudo and a rootful daemon and is **not** the Phase 3 hardened target.
`NOPUBLIC` selects loopback bindings for managed Docker SOCKS, registry and API
publications. Retained resources with conflicting bindings are rejected, rather
than silently rewritten/deleted. It does not restrict the SSH listener or replace
localhost binding of the outer host publications.

## Reproduce

```bash
bash tests/fast.sh
bash scripts/build.sh --platform linux/arm64 -t d3k-local:debian-rootful
bash tests/integration.sh d3k-local:debian-rootful .evidence/local
```

The default suite runs ordinary containers, checks shell/tools/SSH/signals and
negative prerequisites, then exits **77** with privileged integration NOT TESTED.
It does not silently broaden privileges. Only on an isolated disposable runner:

```bash
D3K_TEST_PRIVILEGED=1 bash tests/integration.sh d3k-local:debian-rootful .evidence/native
D3K_TEST_PRIVILEGED=1 bash scripts/measure.sh d3k-local:debian-rootful .evidence/measurements
```

Privileged fixtures cover inner Docker build/lifecycle/archive/Compose/mounts,
registry, controlled Helm, three-server/server-agent clusters, simultaneous
clusters, cross-node DNS/traffic, load balancing, PVC persistence and restarts.
Run `39172295738` passed those implemented workflows on native amd64 and arm64.
The new Kubernetes effective-limit fixtures are implemented and await native
execution; the VS Code tunnel authenticated check remains outstanding.

For comparable scans, prepare databases once and scan every artifact against
that snapshot. Never replace a missing/failed scan with zero findings:

```bash
bash scripts/scan.sh prepare .evidence/scanner
docker image save d3k-local:debian-rootful -o .evidence/candidate.tar
D3K_SCAN_PLATFORM=linux/arm64 bash scripts/scan.sh archive \
  .evidence/candidate.tar .evidence/scanner .evidence/candidate-scan.json
# Resolve the immutable baseline from versions.yaml, then:
D3K_SCAN_PLATFORM=linux/arm64 bash scripts/scan.sh image BASELINE_DIGEST_REFERENCE \
  .evidence/scanner .evidence/baseline-scan.json
oaf-sb scripts/security-report.js baseline=.evidence/baseline-scan.json \
  candidate=.evidence/candidate-scan.json gate=true
```

Exit 1 from the comparison means new fixable HIGH/CRITICAL findings require
review; exit 2 means invalid/incomplete inputs. This implementation adds no
waivers. Do not globally suppress unfixed findings or remove package metadata.
Outer OS, Go binaries, JARs and nested images are reported separately. A scan
result is not proof that every embedded component is covered by the scanner.

## Comparison controls and remaining mutable inputs

[Starting references](reference.md) distinguish the published Ubuntu images from
a fresh historical-source Ubuntu control. The unmodified control failed because
its implicit `adduser` dependency disappeared from rolling Ubuntu. A separately
labelled control uses the **single explicit adduser package repair**:

```bash
bash scripts/build-control.sh .evidence/control --repair-adduser \
  --platform linux/arm64 -t d3k-local:ubuntu-control
```

That control still uses historical mutable installers and is not reconstruction
of historical packages. Its tool/version differences must accompany comparison
results. It is not a release candidate.

oPacks follow current upstream releases and use their own file-integrity
verification, without d3k version/checksum pins. Kube is installed directly
from the official GitHub source to avoid packaged-mirror lag; its current
upstream Jackson dependency replaces the temporary downstream patch. Installed
oPack versions and Kube JAR hashes are retained under `/usr/share/d3k`.
Kube's remote copies run with one JVM processor for that install command to
avoid nightly parallel-copy races. An explicit manifest check fails the build
on missing or mismatched files, including failures that `opack` only logs.

OpenAF intentionally follows the daily nightly artifacts, without release
checksum or version pins. Each build records their URLs, download time, SHA-256
hashes and installed version under `/usr/share/d3k/openaf-*`. A cached build can
reuse an earlier nightly; use `--no-cache` to fetch the current artifacts.

The checksum-locked JVM URLs are mutable upstream URLs: a content change
fails the build, rather than silently adopting it. Mirror reviewed artifacts
before claiming long-term replay. Other OpenAF oPack installs, downloaded
colorFormats/vscTunnel jobs and their transitive inputs remain mutable; built
version/job inventories are retained under `/usr/share/d3k`. APT repositories,
reporting oJobs/oPacks, GitHub Action tags and builder/SBOM tooling are also not
fully frozen. Complete reproducibility is **not claimed**.

Weekly candidate CI uses `--no-cache`, refreshes compatible dependency pins once
for both native architectures, and reruns the gates. Manual runs default to
refreshing; push/PR runs validate the checked-in lock. Local `scripts/build.sh`
also refreshes by default; pass `--locked` first to reproduce existing pins.
See [dependency refresh](dependency-refresh.md) for its scope, retained lock
artifacts and manual inputs. CI does not commit, publish or promote the updates.
Security reporting refreshes its DB daily, while each comparison run freezes
and hashes its own shared DB snapshot.

### Run 40064086386 remediation

The amd64 import completed, but its config-hash versus Docker-image-ID assertion
failed before rootful compatibility/readiness tests ran. The import helper now
retains both IDs, Docker/store details and both configurations, and compares
platform, runtime configuration and ordered rootfs diff IDs directly. It does
not require Docker's image ID to use the config-digest representation.

Buildx uses Go 1.26.10; Docker 29.9.2, Compose 5.6.1 and containerd 2.4.2-3
refresh the affected packaged Go runtimes. Security comparison JSON is also
printed in Actions logs so future gate failures show the actual findings.
The fresh control retains `/etc/os-release` and fails explicitly if its
filesystem or scanner identity is not Ubuntu. Its previous `forky/sid` scan
cannot establish a distribution-level vulnerability comparison.

These changes require a new native amd64/arm64 CI run before acceptance.
Rootless networking remains a separate experiment: this run failed creating
the iptables-legacy NAT chain, before reaching cgroup feasibility. No rootless
support or host kernel/backend change follows from this remediation.

Local checks passed the fast suite, real OCI-fixture import, compiler builds
for both architectures and Dockerfile validation. The final native arm64 image
built with OpenAF nightly 20261024 and upstream Kube 20261024/Jackson 2.22.4.
Kube's files match its upstream manifest; deliberately corrupted package files
are rejected with a nonzero exit status.

Trivy 0.76.0 with the 2026-10-24 database scanned the final arm64 image and
confirmed the targeted stdlib/Jackson findings are absent from the changed
Docker/buildx components and Java dependency. Helm, k3d and kubectl retain nine
stdlib finding occurrences also present in the original CI candidate. This is
not whole-image vulnerability clearance or native integration acceptance.
Reports are under `.evidence/ci-remediation/`.

The current Kube client smoke still fails with missing
`tools.jackson.databind.JacksonModule`, also seen in the earlier unmodified
upstream package. That runtime result is separate from successful image builds
and the upstream Jackson core update. No downstream package or JAR patch is
applied.

## Release and rollback

No image publication, `latest` replacement, mode-default switch, host policy
change, existing-volume deletion, or remote credential remediation is authorized
by this local implementation. Candidate jobs upload artifacts only. Full-image
CI is manual and fails explicitly until safe prewarming has its own evidence.

The published full-image arm64 configuration contains a nonempty GITHUB_TOKEN;
see [the credential finding](reference.md). Its validity was not tested. Review
credentials with their owner and decide separately how to retire affected
artifacts. Do not redistribute their SSH/cluster identities or treat a parent
attestation as proof for a committed image.

For rollback, use the retained immutable normal Ubuntu image reference from
`versions.yaml` with separate disposable state and explicitly supplied SSH
credentials. Do not use the credential-exposed full artifact as a rollback
target. For a separate disposable rollback instance:

```bash
source scripts/lock.sh
export D3K_LOCK_FILE="$PWD/versions.yaml"
docker run --rm -ti --privileged --cgroupns=host -e NOSSH=true \
  "$(lock_get PUBLISHED_BUILD)" /bin/bash
```

This restores the outer reference image; its historical startup still resolves
mutable nested inputs, so it is not a bit-for-bit cluster restore. To return to
the historical source, check out the starting revision in a
separate checkout; leave current work and existing volumes intact. Mode changes
never migrate engine stores.

Before promotion: require native Linux amd64 and arm64 results, explain security
differences, resolve any new fixable findings, verify artifact attestations and
index assembly, and complete the declared manual checks. Phase 2 support and
Phase 3 remain gated; the experimental Phase 2 prototype is described below.

## Observed results

Observed on 2026-10-18. macOS 27.0 arm64, Docker Desktop 4.93.0 / Engine
29.8.1, Linux VM kernel 7.0.14-linuxkit, cgroup v2/cgroupfs, extfs/outer overlay2,
10 CPUs and approximately 4.1 GB VM RAM. Desktop settings report Virtualization
Framework, Rosetta and VirtioFS enabled; these settings do not independently prove
which file-sharing path handled every mount. Enhanced Container Isolation is off.

| Platform/profile | Result | Evidence boundary |
|---|---|---|
| Desktop arm64 Debian build | PASS | Final image ID below |
| Desktop arm64, Docker disabled | PASS | Shell/tools/argv/streams/status/SSH/signals/restart/negative prerequisites |
| Desktop amd64 build | PASS, emulated | Packaging and offline inventory only; not native runtime support |
| Native Linux amd64 / arm64 | NOT TESTED | No disposable native runners executed locally |
| Privileged Docker/Kubernetes workflows | NOT TESTED | Suite prepared; shared Desktop has unrelated running containers |
| Full-engine cold/warm readiness and disk usage | NOT TESTED | Measurement helper correctly exits 77 without disposable-runner selection |
| Rootless / reduced-privilege / external | NOT TESTED | Not implemented beyond explicit mode rejection; preceding gates are closed |
| Windows/WSL2, Intel macOS, old kernels, hardened Desktop | NOT TESTED | No support inferred |
| VS Code tunnel authentication | NOT TESTED | Manual authentication still required |

Final local artifacts (configuration IDs, not registry manifest digests):

- Debian arm64: `sha256:ea6608f9dfff0d01d39aaedc95f4c66a1c12a13e588111c9c62a6a9646510509`.
- Debian amd64: `sha256:0d419a52b34382022ba0c506a7199b17d7829f9497b0ffbeb0a0d74016ac9b62`.
- Repaired Ubuntu arm64 control: `sha256:cb15e444275f1cfaf65fb2e0930e03de23bb34ff1ed6d31a2990077b0a77997f`.

The final candidate scan's image ID matches the arm64 ID above. OCI importer
testing preserved its input OCI configuration ID. Docker-archive-to-OCI
conversion changes some configuration metadata, so size-comparison OCI images
are **not** substituted for the tested Docker artifact. Their uncompressed
filesystem layer IDs were checked for equality. CI retains the original OCI
archive and verifies the imported configuration before testing. CI provenance,
SBOM attachment and final multi-architecture index assembly remain NOT TESTED.

| arm64 image | Uncompressed image bytes | Compressed layer bytes |
|---|---:|---:|
| Published Ubuntu build | 1,481,355,725 | 594,233,397 |
| Repaired fresh Ubuntu control | 1,471,746,404 | 604,953,565 |
| Debian candidate | 1,159,293,596 | 478,237,059 |

Published compressed bytes are from its immutable platform manifest. Control and
candidate compressed bytes use the same local Skopeo gzip/OCI conversion, without
publication. Debian is 21.2% smaller uncompressed and 20.9% smaller by that
compressed comparison than the repaired control. Different packages/tool builds
remain confounders; no readiness/performance improvement is claimed.

### Scanner evidence and closed security gate

Trivy 0.76.0, locked image digest in `versions.yaml`. Vulnerability DB updated
2026-10-18 13:11:41 UTC; Java DB updated 2026-10-18 00:58:00 UTC. Both databases
were shared read-only across comparisons and their hashes retained. All rows
below are **finding occurrences**, not unique CVEs.

| Outer arm64 image | OS HIGH / CRITICAL | Go HIGH / CRITICAL | Fixable Go HIGH/CRITICAL | JAR HIGH/CRITICAL |
|---|---:|---:|---:|---:|
| Published Ubuntu | 0 / 0 | 69 / 0 | 65 | 0 |
| Repaired fresh Ubuntu | 0 / 0 | 56 / 0 | 52 | 0 |
| Debian | 153 / 7 | 43 / 0 | 39 | 0 |

The reported Debian OS HIGH/CRITICAL occurrences have no fixed version in this
snapshot. Do not equate advisory/coverage differences with proven runtime risk
reduction. The bundled JRE is not an APT package; zero JAR findings does not prove
complete JVM vulnerability coverage. **Fewer vulnerabilities is not claimed.**

Relative to published Ubuntu, no new fixable HIGH/CRITICAL entries were found by
the target/package/CVE comparison. Relative to the fresh Ubuntu control, three
additional buildx stdlib HIGH findings remain: **CVE-2026-78667,
CVE-2026-78669, CVE-2026-97031**. Both distributions ship buildx 0.38.0 at the same source
commit, but Debian's binary embeds Go 1.26.8 and Ubuntu's embeds 1.26.9. The
current signed Debian repository offers no newer buildx package. No waiver or
cross-distribution package substitution was added. **This comparison gate fails
and promotion remains blocked.** CI compares against both controls.

Nested candidate inputs were scanned separately; these are not included in the
outer-image totals and no nested baseline runtime comparison was inferred:

| Locked nested input | HIGH | CRITICAL | Fixable HIGH/CRITICAL |
|---|---:|---:|---:|
| K3s | 119 | 2 | 119 |
| Registry | 28 | 2 | 30 |
| k3d proxy | 167 | 9 | 174 |
| k3d tools | 20 | 0 | 18 |
| SOCKS | 15 | 0 | 15 |

These findings need dependency review independently of distribution or privilege
changes. K3s-managed system-image contents still require runtime inventory and
review on disposable runners. Rootless mode would not remove these packages.

### Exact checks run

- `bash tests/fast.sh`: PASS, including lock consistency, flag parsing,
  unsupported modes/endpoints/timeouts, argv/empty args/globs/stdin/stderr/exit
  status, no Docker probes under NODOCKER, and rejecting an unready node.
- Both architecture build commands above: PASS; amd64 explicitly emulated.
- `bash tests/integration.sh d3k-local:debian-rootful .evidence/debian-unprivileged-final`:
  five PASS groups, then exit 77 with privileged integration NOT TESTED. SSH
  includes mounted keys without SSH_PASS, literal metacharacter password,
  noninteractive status, TCP forwarding and host-key continuity after restart.
- Actual `docker run -it` with Docker/SSH disabled: PASS for TTY, completions,
  Ctrl-C interruption of `sleep 300`, return to prompt, and exit status 23.
- Functional theme/table aliases and standalone `docker-compose --version`:
  PASS in disposable Docker-disabled/offline containers.
- ShellCheck warning/error analysis (SC1090/SC1091 excluded for dynamic helper
  imports), Bash syntax, YAML parsing, JS syntax and `git diff --check`: PASS.
- Pinned scanner prepare/archive/image commands: PASS for final arm64 candidate,
  immutable published Ubuntu, repaired control and five nested inputs. The final
  security comparator passes published-reference comparison and fails the
  fresh-control comparison as described above; malformed input exits 2.
- Read-only dependency discovery and OpenAF/Badgen compact rendering: PASS.
- OCI-to-daemon import configuration identity and comparison filesystem layer
  identity: PASS. Full attestation retention is not inferred from those checks.

Raw logs, reports, archives, DB metadata and inventories remain in `.evidence/`.
This directory is ignored because archives are large and initialized logs can
contain sensitive data. It is not silently represented as committed evidence.

### Changed files

- Build: `Dockerfile`, `.dockerignore`, `versions.yaml`, installation/build/control
  and inventory helpers under `scripts/`.
- Runtime: `ojob_p1.sh`, `ojob_p2.yaml`, `status.js`, environment/lock/runtime/
  interactive helpers and the resolved SOCKS manifest.
- Verification/reporting: shell suites and fixtures under `tests/`, scanner,
  comparison, badge, dependency-discovery and measurement helpers under `scripts/`.
- CI: the three existing workflows under `.github/workflows/`.
- Documentation: `README.md`, `USAGE.md`, `welcome.txt`, `MIGRATION.md`, this file
  and `docs/reference.md`; `.gitignore` excludes local evidence. `.mini-a` is
  unrelated and untouched.

## Phase 2 prototype — 2026-10-18

Implemented explicit `D3K_DOCKER_MODE=rootless` selection, signed version-matched
Docker rootless extras, pinned slirp4netns, actual subordinate mapping probe,
owned ephemeral runtime, separate marked classic-vfs storage, canonical socket
link, daemon identity verification, cgroup feasibility rejection and owned-process
shutdown. Rootful remains default. External remains rejected. No systemd service
manager, host-policy workaround, automatic Docker-mode fallback or automatic
Kubernetes disablement was added. See [commands and constraints](rootless.md).

Final locally built artifacts (image IDs, not published manifest digests):

| Platform | Image ID | Uncompressed bytes | Build result |
|---|---|---:|---|
| linux/arm64 | `sha256:069d56d13639ac64f5ef8baa9996f4b4aaa999886f82239924b61e5a0fdbe9c3` | 1,191,534,701 | PASS, native Desktop VM architecture |
| linux/amd64 | `sha256:8d987c450faba04e8b6754fb8f875a7394b9a932e5f8649e15f039b0b542c77e` | 1,190,593,274 | PASS, emulated build only |

Both architectures resolved signed Docker extras `5:29.9.1-1~debian.13~trixie`
and slirp4netns `1.2.1-1.1`. The arm64 tool inventory records RootlessKit 3.3.0,
slirp4netns 1.2.1/libslirp 4.8.0, root-owned 4755 mapping helpers, and their hashes.
The extras package brings `dbus-user-session` and systemd-related dependencies;
their presence is not usable service-manager/cgroup delegation.

Execution host: macOS 27.0 arm64, Docker Desktop 4.93.0, Engine 29.8.1,
Linux VM 7.0.14-linuxkit aarch64, cgroup v2/cgroupfs, extfs/overlay2.
Rechecked Desktop settings: Virtualization Framework, Rosetta, VirtioFS and
Grpcfuse configured true; Enhanced Container Isolation false. These are configured
backend settings, not proof that every backend is simultaneously active.

| Check | Result | Scope |
|---|---|---|
| Fast shell/configuration/argv/timeout/cgroup decision checks | PASS | Host checks; cgroup decisions mocked |
| ShellCheck warning/error checks, workflow YAML, JS syntax, diff check | PASS | Static checks only |
| Disabled readiness, argv, tools, sessions, rootful negative, rootless negative | PASS | Six ordinary arm64-container groups |
| Rootless selection with NODOCKER: SSH keys/password/forwarding/restart | PASS | Mode persistence verified through noninteractive SSH; engine explicitly disabled |
| Namespace/mapping prerequisite in ordinary negative container | FAIL | `fork/exec /proc/self/exe: operation not permitted`; rejection path PASS |
| Live rootless daemon identity and canonical endpoint consumers | NOT TESTED | Namespace prerequisite blocks local path |
| Actual rootless cgroup delegation and resource enforcement | NOT TESTED | No privileged disposable runner used |
| Rootless k3d single/multi-node, SOCKS, registry, storage, restart/performance | NOT TESTED | No privileged disposable runner used |
| Native Linux amd64 and arm64 integration | NOT TESTED | Emulation and Desktop ordinary containers do not substitute |
| Other Docker Desktop platforms | NOT TESTED | No runners available |

Exact final verification commands:

```bash
bash tests/fast.sh
docker run --rm -v "$PWD:/mnt:ro" koalaman/shellcheck:stable \
  --severity=warning --exclude=SC1090,SC1091 ojob_p1.sh scripts/*.sh tests/*.sh
ruby -e 'require "yaml"; Dir[".github/workflows/*.{yml,yaml}"].each { |f| YAML.load_file(f) }'
node --check status.js
git diff --check
bash tests/integration.sh d3k-local:rootless-prototype .evidence/phase2/verified-integration
D3K_TEST_MODE=rootless bash tests/session.sh d3k-local:rootless-prototype \
  .evidence/phase2/verified-rootless-disabled-session
docker image save d3k-local:rootless-prototype -o .evidence/phase2/verified-arm64.tar
D3K_SCAN_PLATFORM=linux/arm64 bash scripts/scan.sh archive \
  .evidence/phase2/verified-arm64.tar .evidence/scanner .evidence/phase2/verified-scan-arm64.json
/Applications/OpenAF/oaf-sb scripts/security-report.js \
  baseline=.evidence/debian-final-scan.json \
  candidate=.evidence/phase2/verified-scan-arm64.json gate=true
```

The integration suite returned **77**, with six PASS groups and privileged
integration explicitly NOT TESTED. The negative rootless fixture deliberately
uses no-new-privileges; it is not a working deployment recommendation. Its log
confirms failed readiness and no rootful daemon fallback. The separate disabled
rootless session returned zero and reported `mode=rootless` through SSH.

The retained final scan ImageID matches the tested arm64 image above. Using the
same Trivy 0.76.0 image and frozen DB hashes as Phase 1, OS HIGH/CRITICAL occurrences
changed from 153/7 to **155/7**, all 162 unfixed. The two additional HIGH occurrences
are `CVE-2026-16742` in `libpam-systemd` and `systemd-sysv`. Go findings remain
43 HIGH, zero CRITICAL (39 fixable, four unfixed); JAR HIGH/CRITICAL remain zero.
The Phase-2-versus-Phase-1 fixable comparison returned zero introduced findings
and exit zero; it does not clear the older Ubuntu-comparison release blocker.
No rootless vulnerability-reduction claim is made. amd64 scanning was NOT TESTED
locally; the native CI matrix retains that requirement.

Arm64 uncompressed size increased 32,241,105 bytes (about 2.8%) against the
Phase 1 candidate. Rootless initialized disk usage, compressed transfer size and
readiness/performance changes are NOT TESTED. Nested inputs were unchanged; no
new nested scan or rootless cluster security claim is made.

Evidence is retained locally under ignored `.evidence/phase2/`: final build logs,
`final-images.txt`, `verified-integration/`, `verified-rootless-disabled-session/`,
`verified-arm64.tar`, raw scan and hash, comparison JSON, toolchain inventory,
platform/backend settings and static-check logs. CI now attempts the same suite
with `D3K_TEST_MODE=rootless` on its existing disposable native matrix against
the same built candidate; the experimental step can fail without masking its
retained results. No remote CI run is claimed.

Changed files: `Dockerfile`, `versions.yaml`, `scripts/install.sh`,
`scripts/environment.sh`, new `scripts/rootless.sh`, `scripts/runtime.sh`,
`status.js`, `tests/fast.sh`, `tests/integration.sh`, `tests/docker-only.sh`,
`tests/session.sh`, new `tests/rootless-negative.sh`, the candidate workflow,
`README.md`, `USAGE.md`, `welcome.txt`, `MIGRATION.md`, new `docs/rootless.md`
and this report. The unrelated `.mini-a` remains untouched.

Gate outcome: **experimental, not accepted**. Phase 1 remains closed and Phase 3
has not started. Full-image, release, publishing, latest/default changes and
native support approval remain outstanding. Rollback uses the retained Phase 1
image and its rootful volume; no rootless data is migrated or deleted.

## CI diagnostic and scan patch — 2026-10-18

Run `39142972784` built/imported both native candidates, passed the ordinary
regressions and rootful Docker-only SOCKS, then timed out on Kubernetes readiness.
k3d logged successful cluster creation; the retained evidence did not identify
which API/node/CoreDNS probe failed. No Kubernetes root cause or fix is claimed.

The patch retains timestamped probe outputs and, before failed-test cleanup,
collects bounded API/node/pod/event/CoreDNS and inner node log diagnostics.
Diagnostic output excludes raw kubeconfig, Secret objects and full container
configuration; credential-related log lines are redacted. It does not loosen
readiness, alter host policy or disable Kubernetes.

The candidate scan failed because Trivy was given a BuildKit OCI tar as if it
were a Docker archive. The `oci-archive` scan action now extracts the original
candidate into a temporary OCI layout and mounts that layout read-only. Original
manifests/attestations remain in the retained archive. Reports are published
atomically after scanner success; errors retain stderr without an empty success
report. Candidate/reference/nested scans run independently against one DB
snapshot. Comparisons record NOT TESTED and fail explicitly for missing inputs.

Local verification used the **original arm64 candidate archive downloaded from
that failed run**, with the frozen Phase 1 scanner DB. The OCI scan succeeded;
its reported ImageID exactly matched CI's imported/tested image:
`sha256:3db3cc03189cb80c06c309ab8f080478a13f0a3861a4e34e16c45732432fdbcd`.
This verifies the archive path against CI evidence without rebuilding the image.
The local default buildx driver rejected attestation output; no host settings or
privileged local builder were added to bypass that restriction.

Also passed: `bash tests/fast.sh` (including retained node-probe error and OCI
transport/atomic-failure/cleanup regressions with a mocked scanner), ShellCheck
warning/error checks, YAML parsing and `git diff --check`; actual OpenAF/oJob
missing-input comparison returned 1 with a NOT TESTED report, and same-scan
comparison returned 0. The read-only diagnostics helper captured expected
missing-cluster errors in an owned ordinary container, then that container was
removed. Evidence is in ignored `.evidence/ci-patch/`.

Rootless native execution in the failed run reached daemon identity, then
reported cgroup v2 with driver `none` and stopped at the intended feasibility gate.
No effective resource limits or rootless workflow parity passed. A new job
summary displays this failure even though the experimental step remains
non-blocking. Phase 1/2 support and release gates remain closed.

## Kubernetes endpoint repair and buildx investigation — 2026-10-18

Run `39147729633` successfully scanned candidate, published reference and nested
inputs on both architectures. The published comparison passed. The new diagnostics
identified Kubernetes readiness's concrete cause: kubeconfig contained
`https://0.0.0.0:0`, produced by the explicit `--api-port "$bind:0"` argument.
The API probe failed before node/CoreDNS readiness could be evaluated.

New clusters now use k3d 5.9.0's explicit `:random` form, which resolves a nonzero
port before creating the cluster. After both create and restart, the helper reads
the effective server load-balancer Docker publication, validates that it is one
nonzero IPv4 port, and updates only the intended kubeconfig cluster's server to
`https://127.0.0.1:<published-port>`. This also repairs retained port-zero configs
without deleting clusters or volumes. The publication still follows NOPUBLIC;
advertised loopback does not change that binding. New server certificates explicitly
include 127.0.0.1. Certificate authorities, client credentials and TLS verification
are preserved; no insecure-skip option is introduced.

The implementation follows the pinned [k3d port parser](https://github.com/k3d-io/k3d/blob/v5.9.0/cmd/util/ports.go),
which distinguishes `random` from a literal zero. The native integration suite
now checks the advertised loopback/nonzero endpoint and performs a TLS-verified
API readiness request after startup.

Local checks passed: fast tests including valid/invalid/ambiguous publication and
unrelated-cluster rejection, ShellCheck warning/error checks, workflow YAML and
diff checks. A real Docker publication validated the exact Go inspect template.
Real kubectl in an offline ordinary container repaired a fixture endpoint while
preserving hashes of the fixture CA/client credentials and keeping TLS verification.
The rebuilt arm64 image passed the six ordinary-container regression groups;
the suite returned 77 for privileged integration NOT TESTED. Actual new/retained
Kubernetes cluster execution, API certificate/SAN acceptance and native amd64/arm64
runtime acceptance await CI. No privileged local execution was used.

The remaining fresh-Ubuntu security comparison is a genuine failed gate on both
architectures: buildx's Go 1.26.8 standard library introduces fixable HIGH
`CVE-2026-78667`, `CVE-2026-78669` and `CVE-2026-97031` relative to that control.
The supported Debian repository still lists no buildx version newer than locked
0.38.0. The official [upstream v0.38.0 release](https://github.com/docker/buildx/releases/tag/v0.38.0)
was investigated as an alternative; both architecture downloads match GitHub's
published SHA-256 digests and still report Go 1.26.8:

| Official release executable | SHA-256 |
|---|---|
| linux/amd64 | `4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287` |
| linux/arm64 | `38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c` |

Trivy 0.76.0 with the existing frozen database analyzed both executables using
its rootfs scanner and reported all three CVE IDs in each. An initial scan of
non-executable downloads discovered no binary packages and was rejected as
insufficient coverage; executable permissions were set and actual binary
coverage checked before drawing this conclusion. These scans test a proposed
replacement, not a new full-image comparison.

Neither downloaded binary was installed. The signed Debian package/version lock
and security gate are unchanged; no waiver or unsupported cross-distribution
package replacement was introduced. The image still has the known buildx
findings, and CI is expected to keep that gate failed until a verified fixed
artifact is available or a separately reviewed build strategy is implemented.
Investigation/build/scan/test evidence is retained under ignored
`.evidence/endpoint-buildx/`. Rootful remains default, rootless remains gated,
and no image publication or promotion is authorized by this patch.

## Topology DNS readiness patch — 2026-10-18

Run `39149986122` passed base readiness, API endpoint validation, Docker/Kubernetes
workflows, host SOCKS, and the three-server topology on both native architectures.
The server-plus-two-agents topology reached three Ready nodes and a fully rolled
out fixture DaemonSet, then its first DNS/Service request failed with
`wget: bad address 'node-echo.default.svc.cluster.local:8080'`. CoreDNS startup
timestamps coincide with the failed request. A readiness race is strongly
indicated; persistent DNS/network faults are not ruled out by that evidence.

The topology suite now waits for CoreDNS rollout, then validates DNS plus HTTP
Service connectivity from **every** fixture pod, accepting only a response naming
one of the actual fixture pods. CoreDNS and all pod probes share a 120-second
deadline; each request is bounded. This barrier runs after creation and after
restart with a refreshed pod inventory. Permanent DNS failure, missing pods,
CoreDNS rollout failure and unexpected responses still fail. Existing per-node
DNS assertions, all-pairs pod-IP connectivity, multi-backend load-balancing,
independent default-cluster checks and stop/start checks are retained.

On any topology failure, an EXIT handler preserves the original failure status
and records context/phase. Before outer teardown, it collects that topology's
API/node/pod status, kube-dns Service/EndpointSlices, CoreDNS rollout state/logs
and events under a separate 45-second deadline. Output stays in the existing
per-topology artifact log, with credential-related lines redacted. It does not
query Secret objects or dump raw kubeconfig.

Local verification: `bash tests/fast.sh` passed, including command-mocked tests
for delayed DNS, checking every pod, CoreDNS-first sequencing, repeat checks on
restart, empty inventories, unavailable CoreDNS, the failing context's diagnostic
queries and a bounded permanent DNS failure. An actual offline ordinary-container
invocation of the topology script with failed mock cluster commands preserved
exit 17, queried `k3d-server-agents`, and redacted a fixture credential-related
line. ShellCheck warning/error checks, workflow YAML parsing and diff checks
passed. These are focused logic/diagnostic checks, not native networking proof.
Evidence is retained locally under ignored `.evidence/topology-dns/`.

Actual agent-topology DNS, cross-node networking and restart acceptance of this
patch are NOT TESTED locally and await the fresh native CI execution. The known
three buildx CVEs still block the fresh-Ubuntu security comparison; scans and
the published-reference comparison passed in the completed run. Rootless still
fails its cgroup feasibility gate. No support/default, host-policy, publishing
or security-waiver change is included.

## Outer restart readiness patch — 2026-10-18

Native run [39151852516](https://github.com/nmaguiar/d3k/actions/runs/39151852516)
passed both multi-node topologies, including server-plus-agents DNS, and effective
Docker memory/CPU/PID controls on amd64 and arm64. Outer restart still failed:
amd64 dockerd reused an existing containerd PID and timed out; arm64 status
returned early while CoreDNS was degraded. Concurrent probes also collided on
shared temporary log filenames. The containerd log suggests stale runtime state;
it does not establish what process, if any, held that PID after restart.

Rootful startup now checks for an identified live engine, then creates a fresh
root-owned 0700 `/run/d3k-rootful.*` execution-state directory. Docker's
[`--exec-root`](https://docs.docker.com/reference/cli/dockerd/) separates this
transient state from persistent data. The existing `/var/lib/docker`, image-store
settings and storage driver remain unchanged. No retained runtime directory is
deleted, and no process is killed based on a retained PID. Only the new path is
recorded under `/run/d3k`, keeping containerd sockets outside diagnostic copies.
Old runtime directories may remain until container recreation.

Startup detects early managed-engine exit, marks failure and reports the exit
code. Its error trap also covers startup errors returned from helper functions.
Kubernetes probes write unique temporary files and atomically publish completed
logs. Status samples the journal before probing to avoid misclassifying an
in-flight startup probe, and `check=true` retries transient degradation until
readiness or the existing deadline. Explicit failures still return nonzero
immediately; ordinary status still reports degradation immediately.

Local verification against rebuilt native arm64 `d3k-local:restart-patch`:

- `bash tests/fast.sh`: PASS; the Linux-only mocked startup subcase was NOT TESTED
  on macOS, then passed when the same unit script ran in an ordinary Linux container.
- ShellCheck warning/error checks, `node --check status.js`, workflow YAML parsing
  and `git diff --check`: PASS.
- `bash tests/integration.sh d3k-local:restart-patch .evidence/restart-patch/verified-integration`:
  eight ordinary-container groups PASS, then exit 77 for privileged integration
  NOT TESTED. This includes existing shell/tool/session/negative checks.
- Packaged OpenAF/status tests: PASS for delayed recovery, bounded persistent
  degradation, immediate human degradation and immediate fatal failure.
- Actual packaged dockerd/containerd initialization: PASS for a fresh execution
  socket, preservation of a deliberately stale PID pointing to an unrelated live
  process, preservation of a data sentinel, and prompt failure on missing network
  privileges. The unrelated process remains alive. This is an ordinary-container
  negative prerequisite test, not proof of successful privileged startup.
- Concurrent mocked Kubernetes probes and early daemon exit detection: PASS.

Evidence is retained under ignored `.evidence/restart-patch/`. No new privileged
local execution or native amd64 runtime acceptance was performed. Actual outer
restart, retained Kubernetes storage and complete native parity await CI. The
three known buildx HIGH findings still block the fresh-Ubuntu comparison; no
waiver, dependency/default, publication or host-policy change is included.

## Retained-cluster recovery and measurements — 2026-10-18

Run [39165568073](https://github.com/nmaguiar/d3k/actions/runs/39165568073) passed
amd64 workflow compatibility, including outer restart and persistence. Its first
measurement sample reached both cold and warm readiness, then failed with
`No help topic for 'crictl'`. The pinned K3s image dispatches the standalone
`crictl` executable successfully; an ordinary offline container verified its
version/help. Measurement inventory now invokes that executable with the explicit
K3s containerd socket. Completed timings are written before image inventory, and
failed measurements retain bounded diagnostics before removing their own container.

arm64 passed both topologies and Docker resource controls, restarted Docker,
then failed `k3d cluster start` when the server restarted during post-start
preparation. The daemon log also records a cgroup.procs `device or resource busy`
error during restoration. Later node logs show K3s starting again. This evidence
does not establish the underlying cgroup cause or prove eventual recovery.

Retained-default-cluster startup now permits at most three attempts under the
same startup deadline. After a failed attempt it stops only `k3s-default`, waits
two seconds within that deadline, and retries. A failed stop aborts recovery.
This scoped stop matters because [k3d v5.9.0 ClusterStart](https://github.com/k3d-io/k3d/blob/v5.9.0/pkg/client/cluster.go)
skips post-start preparation for nodes it finds already running. Logs preserve
each failed attempt. Existing endpoint validation, API/node/CoreDNS readiness and
SOCKS checks still follow successful startup; retry exhaustion remains a failure.
New-cluster creation is unchanged. No cluster deletion, cgroup mutation, volume
removal or automatic mode change is performed.

Focused checks passed: `bash tests/fast.sh`, ShellCheck warning/error checks,
workflow YAML parsing and `git diff --check`. New command-mocked regressions cover
first-attempt success, recovery, scoped stop sequencing, attempt exhaustion,
decreasing timeout budgets, deadline expiry and stop failure. Measurement fixtures
cover all three samples, the corrected inventory argv, retained timings, failure
diagnostics and preservation of the original error status. The Linux-only mocked
engine-exit regression also passed in an ordinary container.

The rebuilt native arm64 image is `d3k-local:cluster-retry`. Local evidence is in
ignored `.evidence/cluster-retry-patch/`. Privileged retained-cluster recovery and
complete measurement samples remain NOT TESTED locally and require native CI.
All eight ordinary-container integration groups passed; the suite returned 77
for privileged integration NOT TESTED. The known buildx security findings and
rootless feasibility failures remain unresolved.

## Fixed-compiler buildx — 2026-10-18

Native run [39167666961](https://github.com/nmaguiar/d3k/actions/runs/39167666961)
passed the implemented rootful workflow suite, restart/persistence and three
measurement samples on both architectures. Median cold/warm readiness was
70.173/27.294 seconds on amd64 and 60.574/27.383 seconds on arm64. The only blocking
steps were the fresh-Ubuntu comparison's three buildx standard-library findings.
Pod resource-limit enforcement and authenticated tunnel checks remain NOT TESTED;
rootless remains experimental after cgroup feasibility failure.

The official buildx v0.38.0 binaries and signed Debian package still use Go 1.26.8.
The candidate builds the same upstream source with fixed Go 1.26.9 in a separate
multi-architecture build stage. The compiler image digest, source archive SHA-256,
upstream version and revision are locked in `versions.yaml`. Compilation uses
upstream linker fields, vendored dependencies, `GOTOOLCHAIN=local`, disabled
module downloads and a network-disabled build step. The final image receives no
Go toolchain or source tree. Buildx and Go licenses are retained.

The vulnerable APT buildx package is omitted rather than overwritten or shadowed;
the installer rejects an unexpected installed package. Other Docker packages
still come from the signed Debian repository. The plugin stays at
`/usr/libexec/docker/cli-plugins/docker-buildx`, with upstream version/revision.
`/usr/share/d3k/buildx-build.txt` records source, compiler image, full `go version -m`
metadata and binary checksum; inventories include it. Rebuilt artifact checksums:

| Architecture | SHA-256 |
|---|---|
| amd64 | `85fb68311b6be23d469366b4a1e676ac89f77e6586ebf85d20c280c4bd522ca0` |
| arm64 | `eaf13129c33d17a33849b286eb724192c20819519333619ae7c5ef64b3e7dc10` |

CI additionally requires exactly one scanned buildx executable, Go 1.26.9 stdlib
and module coverage, and absence of the original three **stdlib** findings.
Other dependency findings, including the same CVE ID against `golang.org/x/net`,
remain visible to the unchanged complete comparison gate. The checker has actual
binary scan evidence and synthetic missing/duplicate/compiler/module/CVE rejection
fixtures. No vulnerability suppression or metadata removal was introduced.

Local verification: native arm64 image build and amd64 cross-compilation passed.
Frozen Trivy 0.76.0 database scans of both rebuilt executables retain module/stdlib
coverage and omit the original stdlib findings. The complete arm64 image scan
passes the existing local fresh-Ubuntu-control comparison with zero newly
introduced fixable HIGH/CRITICAL findings. Other fixable/unfixed findings remain
reported. This is a local frozen-database comparison; fresh native CI must repeat
it against that run's shared database snapshot.

`bash tests/fast.sh`, ShellCheck warning/error checks, JavaScript syntax and
workflow YAML checks passed. Packaged buildx version/help, offline bake,
provenance/checksum, no duplicate package/toolchain, license and real OpenAF
coverage-check regressions are included in the ordinary-container integration
suite. Privileged buildx `build --load` and native amd64 execution of the new
artifact remain NOT TESTED locally; the existing native CI integration suite
executes them before any release decision. No default, privilege, publishing or
promotion setting changes. Reverting this source-build change would restore the
previous package and its known standard-library findings without migrating data.

Final local arm64 image ID: `sha256:5ab934459047b2ad95848760fa4431682e7f81c0177ab5e06ea3ccb94e2ebda6`.
All nine ordinary-container groups passed; integration returned 77 for privileged
tests NOT TESTED. Raw scans, build metadata and comparisons are retained in the
local Codex Security artifact collection; CI retains its own candidate evidence.

## Baseline closeout and pod resource fixtures — 2026-10-19

The [successful-run baseline](baseline-39172295738.md) records exact per-architecture
OCI/config identities, native host/engine/cgroup/filesystem data, measurement
ranges, outer finding counts and shared scanner database hashes. The previous
buildx security failure is resolved in native run `39172295738`. The report also
records the remaining rootless failure, missing checks, and the fresh control's
unexpected `forky/sid` scanner OS identity. Phase 1 release acceptance remains
closed; neither a distribution-level vulnerability reduction nor full migration
completion is claimed.

The shared suite now runs `tests/pod-limits.sh` after restart/persistence. It
creates one uniquely named namespace, using the existing pinned web fixture
image and explicit default test-cluster context. Two restart-disabled pods each
have 250m CPU and 32 MiB memory limits/requests, no service-account token mount,
and 60-second active deadlines. CPU proof requires the actual cgroup quota and
an increase in throttling during a five-second busy loop. Memory proof requires
`memory.max=33554432`, then a failed pod container terminated as `OOMKilled` with
exit 137 after a bounded 64 MiB tmpfs write. An arbitrary exit 137 is insufficient.
Missing readable cgroup v2 controls return 77/NOT TESTED; no privileges or host
policies are changed to force a pass.

Both pods share a 120-second test deadline (test-only override capped at 180).
Kubernetes calls are bounded. Failure diagnostics query only the created
namespace before bounded cleanup; a namespace creation conflict never triggers
deletion of that namespace. Cleanup never prunes global resources. The shared
test runner preserves exit 77 as NOT TESTED and other nonzero failure statuses;
a required missing prerequisite still exits nonzero and cannot yield a green job.

Local validation:

- `bash tests/fast.sh`: PASS, including mock Kubernetes success/delayed completion,
  CPU/OOM rejection, misleading exit 137, missing controls, deadline expiry,
  namespace collision, scoped diagnostics/cleanup, and result-status propagation.
- The same mocked pod tests in an ordinary Linux container: PASS.
- OpenAF fixture parsing/bounds checks, shell syntax, ShellCheck warning/error,
  YAML parsing and `git diff --check`: PASS.
- Actual pinned-image payloads in ordinary Docker Desktop containers: CPU quota
  `25000 100000` with increasing throttling PASS; 32 MiB tmpfs OOM with Docker's
  OOMKilled=true and exit 137 PASS. Unlimited CPU and an incorrect 64 MiB memory
  ceiling were rejected before their workloads. These are payload tests, not
  Kubernetes enforcement evidence.
- The existing nine ordinary-container integration groups: PASS; suite exit 77
  for privileged integration NOT TESTED. Test/docs-only changes required no new
  application-image build.

Actual pod enforcement on native amd64/arm64 Kubernetes remains NOT TESTED locally
and must pass the existing CI suite before the new matrix row can be promoted.
Authentication-dependent tunnel checks, safe full-image prewarming, the control
coverage review and Phase 2/3 acceptance remain separate outstanding work.

## Docker-only rootless diagnostic (2026-10-24)

Executed `tests/rootless-diagnostic.sh` on the local ARM64 Docker Desktop Linux
VM (kernel `7.0.14-linuxkit`, outer Docker `29.9.2`, inner Docker `29.9.1`).
The test image was a local overlay of the current runtime/entrypoint/status on
`d3k-local:buildx-fixed`, not a fresh dependency build or the GitHub candidate.
Test image ID: `sha256:c4602a1fa3b4215fd3ed9a4c724e8e82fbaa3bf3b43d95f4ce76218c43ce162d`.
Evidence: `.evidence/rootless-diagnostic-local-complete/`.

- PASS: readiness, rootless process identity, canonical Docker endpoint, no
  rootful daemon, explicit Kubernetes disablement.
- PASS: image pull, container run/exec/logs, custom network DNS/HTTP.
- PASS: bind writes as inner root (outer owner UID 1001), named volume writes
  and reads, Docker and Buildx builds, both Compose commands.
- PASS: outer container restart, readiness and rootless identity after restart,
  named-volume and built-image persistence.
- FAIL: rootful-compatible bind write using inner `--user 1001:1001` against a
  directory owned by outer UID 1001 (`Permission denied`). This ownership contract
  differs under rootless UID mapping. The experiment retains a failing result
  while completing independent checks; it does not chmod/chown the directory to
  conceal the incompatibility.
- NOT TESTED: resource enforcement and Kubernetes. Docker reports cgroup v2 with
  driver `none`; explicit diagnostic mode permits this and marks controls
  unsupported. A separate strict rootless run still rejected that configuration
  and stopped the daemon. Neither experiment changes host delegation.

`bash tests/fast.sh` passed, including diagnostic selection validation and the
strict cgroup rejection / explicit Docker-only exception. Workflow YAML parsing
and `git diff --check` passed. Native GitHub amd64/arm64 diagnostic runs remain
NOT TESTED; the workflow now includes an independent nonblocking diagnostic step
with retained per-stage results. This is evidence that Docker-only workloads can
run rootless on the local VM, not promotion of rootless support.
