# Migration checklist and gates

Starting revision: `ad705d18d4cdd82c09e3adc966b9d863199d64b7`.
The untracked `.mini-a` file is unrelated and must remain untouched.

- [x] 1a implementation: immutable references, CI containment, shared tests, startup/status fixes.
- [x] 1b implementation: Debian 13 rootful candidate and verified installation inputs.
- [ ] 1c: comparison, scans, safe full-image handling, release gates.
- [ ] 2: experimental rootless prototype; support remains gated on Phase 1 and native parity.
- [ ] 3a: reduced-privilege all-in-one, only after Phase 2 passes.
- [ ] 3b: dedicated client/daemon experiment, only after Phase 2 passes.

Each stage is independently reviewable. Implementation completion is distinct
from a support gate: native Linux amd64 and arm64 workflow evidence is required
for Phase 1. Missing prerequisites produce NOT TESTED, never PASS.

Current gate: **CLOSED**. Native run `39167666961` passed the implemented rootful
workflow suite, outer restart/persistence and all three readiness measurement
samples on amd64 and arm64. Only the fresh-Ubuntu security comparison failed:
three additional fixable HIGH findings in buildx's Go standard library. The
fixed-compiler source-build patch awaits native CI acceptance. No waiver was
added. Phase 1c reporting/CI is implemented, but release evidence, full-image
prewarming and performance validation remain incomplete. Phases 2/3 are not
promoted while their preceding gate is closed. The requested Phase 2 prototype
may be developed without treating either gate as passed. See
[the measured report](docs/validation.md).

Phase 2 prototype implementation checklist (support gate remains closed):

- [x] Install versioned extras/network helper and implement actual UID mapping probe.
- [x] Implement canonical socket contract and reject foreign endpoints.
- [x] Separate runtime/storage and implement bounded daemon identity/startup/cleanup.
- [x] Reject failed namespace/cgroup feasibility; never fall back.
- [x] Extend shared tests with negative, identity and endpoint checks.
- [x] Record local results and retain experimental status after prerequisite rejection.
- [ ] Native privileged daemon/consumer parity, usable delegation, effective Docker/pod limits.
- [ ] Rootless multi-node networking/storage/SSH/restart/performance acceptance.

## Compatibility matrix

| Contract | Debian rootful | Rootless | Hardened | External |
|---|---|---|---|---|
| Shell, argv, streams, exit codes, signals, exec | Required | Required | Required | Required |
| OpenAF, oafp, ojob, oPacks, help, completions | Required | Required | Required | Required |
| Docker/buildx/Compose/skopeo/archive/registry | Required | Required with explicit limitations | Required with explicit limitations | Required on dedicated daemon |
| Mounts, volumes, ownership, persistence | Required | Required | Required | Shared absolute paths |
| Single server, three servers, server plus agents | Required | Required for Kubernetes support | Required | Required |
| DNS/services/storage/SOCKS/restarts/parallel clusters | Required | Required | Required | Explicit routing |
| SSH authentication and forwarding | Supplied credentials | Supplied credentials | Keys by default, port 2222 | Supplied credentials |
| Effective Docker and pod resource limits | Measure | Hard gate | Hard gate | Daemon gate |
| Universal privileged Docker operations | Compatibility option | Not promised | Restricted | Daemon dependent |
| Latest native acceptance | Implemented workflows/measurements PASS; security comparison FAIL | FAIL (cgroup feasibility) | NOT TESTED | NOT TESTED |

Test native Linux amd64/arm64 first; add Docker Desktop macOS Apple Silicon and
Windows/WSL2 only with actual evidence. Emulation is build proof only.

## Decisions

- Rootful stays the default. Never fall back between modes or disable Kubernetes.
- Normalize flags to true/1/yes/on and false/0/no/off, case insensitive; empty and
  unset are false. Reject other values before startup. This deliberately changes
  legacy presence/truthiness behavior.
- Withhold an unsafe full image independently of the normal image gate.
- If rootless Kubernetes or resource enforcement fails, stop at experimental;
  do not introduce systemd or alter host policy to force a pass.
- No publishing, promotion, global cleanup, host-policy changes, or volume deletion.
- Preserve rootful classic vfs initially; do not silently change image stores.
- Scans must retain package metadata and distinguish OS, binary, JAR, and nested
  findings. Security improvements require comparable measurements.

## Evidence and delivery

Use PASS, FAIL, NOT TESTED, NOT APPLICABLE. Capture exact digests, platform and
kernel/cgroup/filesystem/backend, package inventories, redacted commands, raw
scanner output and database identity, logs and cold/warm measurements. Keep
published Ubuntu, fresh Ubuntu control, Debian, and later profiles separate.
Never store credential-bearing environment dumps or full image configuration.

The final report must list changes, tests, platform results, measured differences,
limitations, mode commands, rollback, and release decisions still outstanding.
Rollback uses an immutable image and separate mode-specific state; changing
modes does not migrate storage.
