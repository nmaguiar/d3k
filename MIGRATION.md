# Migration checklist and gates

Starting revision: `ad705d18d4cdd82c09e3adc966b9d863199d64b7`.
The untracked `.mini-a` file is unrelated and must remain untouched.

- [ ] 1a: immutable references, CI containment, shared tests, startup/status fixes.
- [ ] 1b: Debian 13 rootful candidate and verified installation inputs.
- [ ] 1c: comparison, scans, safe full-image handling, release gates.
- [ ] 2: optional rootless mode, only after Phase 1 passes.
- [ ] 3a: reduced-privilege all-in-one, only after Phase 2 passes.
- [ ] 3b: dedicated client/daemon experiment, only after Phase 2 passes.

Each stage is independently reviewable. Implementation completion is distinct
from a support gate: native Linux amd64 and arm64 workflow evidence is required
for Phase 1. Missing prerequisites produce NOT TESTED, never PASS.

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
| Actual runtime results | NOT TESTED | NOT TESTED | NOT TESTED | NOT TESTED |

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
