# Experimental rootless feasibility

Phase 2 is an opt-in prototype. Phase 1's release gate remains closed. Developing
this prototype does not promote either mode or advance to Phase 3. Workflow
compatibility, actual privilege reduction, dependency findings, and native runtime
evidence are separate requirements.

Build and run only on a dedicated disposable test host:

```bash
bash scripts/build.sh -t d3k-local:rootless-prototype
docker run --rm -it --privileged --cgroupns=host \
  -e D3K_DOCKER_MODE=rootless -e NOSSH=true \
  -p 127.0.0.1:10080:1080 d3k-local:rootless-prototype bash
status.js check=true json=true timeout=300
```

The outer privileged requirement remains. The compatibility image retains
unrestricted sudo and the rootful daemon binaries. Rootless mode is not an
enforceable sandbox. This image does not provide a hardened target.

Docker-only operation requires explicitly adding `-e NOK8S=true`. It normally must
pass cgroup feasibility; no failure disables Kubernetes or selects rootful.
`NODOCKER=true` disables all engine prerequisites/startup/probes in either mode.

The daemon launches as UID 1001 with packaged `dockerd-rootless.sh`, RootlessKit,
slirp4netns and its builtin port driver. Docker rootless extras match the locked
Docker version; slirp4netns has an explicit package version. The package inventory
and tool hashes record resolved components. The signed extras package depends
on `dbus-user-session`, which brings systemd-related packages into this compatibility
image; they are not started as a service manager. The measured added package
findings and size are recorded in validation, not hidden as runtime hardening.
Debian repositories and some existing
OpenAF inputs remain mutable, as documented for Phase 1.

The probe checks root-owned setuid mapping helpers and actually creates a
namespace with the configured 65,536 subordinate UIDs/GIDs. It does not alter
host policy to repair missing prerequisites. Runtime is owned 0700
`/run/user/1001`; RootlessKit gets an invocation-specific state directory.
On normal shutdown only the verified UID-1001 RootlessKit process is signalled
and its invocation-owned state removed. Abrupt outer termination can retain
runtime files; subsequent invocations use a fresh state directory rather than
deleting retained directories. Persistent storage is never cleaned automatically.

Storage is explicitly classic **vfs**, not an automatic fallback. It uses
`/home/user/.local/share/d3k/docker-rootless`, separate from rootful `/var/lib/docker`.
The store marker rejects a changed engine version/backend and unmarked populated
storage. Mount only the exact separate data directory when persistence is needed;
do not share the whole home or engine directory across modes. Export/import or
recreate explicitly; switching the flag does not migrate data. Installing
fuse-overlayfs does not select it. Performance remains unmeasured.

The canonical socket is always `/var/run/docker.sock`. In rootless mode a
compatibility-profile sudo bootstrap creates a link to
`/run/user/1001/docker.sock`; it refuses an existing real socket or unrelated link.
Daemon launch never uses sudo. This gives default-socket SDK clients, Docker,
Compose, arbitrary commands, `docker exec`, and SSH a common intended endpoint
without sourcing a shell script. Startup verifies rootless security options,
the owning RootlessKit UID and absence of a root-owned dockerd. Live consumer
parity remains an integration requirement. Foreign `DOCKER_HOST`/`DOCKER_CONTEXT`
values are rejected. No Docker API TCP listener is added.

After daemon identity succeeds, startup records cgroup metadata and requires
Docker to report cgroup v2 with the systemd driver. Driver `none` or `cgroupfs`
fails feasibility and stops the experimental daemon. This image does not boot
systemd; the manually launched configuration is therefore expected to hit this
gate on ordinary hosts even with cgroup v2. No host delegation or service-manager
workaround is included. Passing the metadata check alone would still not prove
effective limits: bounded Docker memory/CPU/PID and Kubernetes pod enforcement
tests are required before any support claim.

For the separate Docker-only diagnostic, explicitly select all three:
`D3K_DOCKER_MODE=rootless`, `NOK8S=true`, and
`D3K_ROOTLESS_DIAGNOSTIC=true`. The diagnostic flag is rejected with rootful mode
or without explicit Docker-only selection. It permits startup when the cgroup
metadata check fails and records resource controls as **UNSUPPORTED**. Namespace,
identity, storage and endpoint checks still apply. The default strict path remains
unchanged. This diagnostic does not test Kubernetes or claim resource enforcement.

```bash
D3K_TEST_PRIVILEGED=1 bash tests/rootless-diagnostic.sh \
  d3k-local:rootless-prototype .evidence/rootless-diagnostic
```

The diagnostic exercises containers, network DNS, volumes, bind ownership,
Docker/Buildx builds, both Compose commands and restart persistence in a disposable
container. Each stage has a bounded timeout and retained logs. CI runs this
independently before the strict rootless suite so the cgroup prerequisite cannot
hide Docker-only results.

Diagnostics are `/run/d3k/startup.log`, `rootless-prerequisites.log`,
`rootless-mappings.txt` and, if the daemon starts, `rootless-cgroups.txt`.
Readiness becomes failed after a feasibility error. An accepted `--memory` flag
is not an enforcement result.

Run shared workflows, with retained evidence, only on disposable native runners:

```bash
D3K_TEST_PRIVILEGED=1 D3K_TEST_MODE=rootless \
  bash tests/integration.sh d3k-local:rootless-prototype .evidence/rootless
```

The suite first tests explicit Docker-only selection, then normal Kubernetes;
it stops on failures. CI runs this as a separately labelled experimental step
against the same built artifact and retains failure logs; its non-blocking status
is not an acceptance gate. Rootful integration remains independent.
The ordinary-container negative fixture deliberately enables `no-new-privileges`
to make setuid mapping unavailable. This verifies rejection rather than proposing
that setting for a working rootless profile.

Actual results and remaining tests are in [validation](validation.md). The local
Docker-only diagnostic passed networking, volumes, builds, Compose and restart,
but failed rootful-compatible bind ownership. Native GitHub diagnostic execution,
rootless Kubernetes, SSH endpoint parity and cgroup enforcement remain NOT TESTED.
Unsupported advanced privileged Docker operations keep the rootful compatibility
path. Do not describe this prototype as equivalent support.

Rollback: retain the prior immutable image and rootful volume, select
`D3K_DOCKER_MODE=rootful`, and use its original storage. Do not attach a rootless
store to rootful or delete it to perform rollback. No image publishing, default
switch, or `latest` promotion is part of this experiment.

References: [Docker rootless prerequisites](https://docs.docker.com/engine/security/rootless/),
[daemon, DinD and cgroup constraints](https://docs.docker.com/engine/security/rootless/tips/).
