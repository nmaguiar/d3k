# Validation, limits, and rollback

This is a **gated Debian rootful candidate**, not a completed three-phase
migration or a released image. Rootful remains the default. Rootless and
external modes fail explicitly until their preceding gates pass.

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
  configuration-ID checks, scans, and a conservative new-fixable-findings gate.
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
They are not an assertion that these cases have run. Kubernetes effective-limit
fixtures and the VS Code tunnel authenticated check remain outstanding.

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

The checksum-locked OpenAF/JVM URLs are mutable upstream URLs: a content change
fails the build, rather than silently adopting it. Mirror reviewed artifacts
before claiming long-term replay. OpenAF's oPack installs, downloaded
colorFormats/vscTunnel jobs and their transitive inputs remain mutable; built
version/job inventories are retained under `/usr/share/d3k`. APT repositories,
reporting oJobs/oPacks, GitHub Action tags and builder/SBOM tooling are also not
fully frozen. Complete reproducibility is **not claimed**.

Weekly candidate CI uses `--no-cache`, refreshes signed APT packages, discovers
base/nested digest and release changes, and reruns the gates. Discovery does not
edit inputs, publish, or promote. Review updates to `versions.yaml`, the matching
Dockerfile base default and SOCKS manifest together; fast checks enforce those
duplicate values. Security reporting refreshes its DB daily, while each
comparison run freezes and hashes its own shared DB snapshot.

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
