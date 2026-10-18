# d3k

In-container Docker and multi-node Kubernetes (k3d), with OpenAF tools.

[![latest security](.github/sec-latest.svg)](.github/sec-latest.md)
[![build security](.github/sec-build.svg)](.github/sec-build.md)

This checkout contains a **Debian 13 rootful candidate**. Published tags and the
rootful default have not changed. Native Linux amd64/arm64 integration gates
remain outstanding; rootless and external modes are rejected until their gates
are implemented. See [migration status](MIGRATION.md) and [validation](docs/validation.md).

Build locally (no publication):

```bash
bash scripts/build.sh -t d3k-local:debian-rootful
```

Interactive compatibility profile, with host-local SOCKS access:

```bash
docker run --rm -ti -p 127.0.0.1:10080:1080 --privileged --cgroupns=host \
  -e NOSSH=true d3k-local:debian-rootful /bin/bash
# Inside the container:
status.js check=true json=true timeout=300
```

SSH requires supplied credentials. For example, set a password in the calling
shell, then pass it without including the value in the command line:

```bash
export SSH_PASS # set its value privately first; empty values are rejected
docker run --rm -d -p 127.0.0.1:2222:22 --privileged --cgroupns=host \
  -e SSH_PASS d3k-local:debian-rootful
ssh -p 2222 user@127.0.0.1
```

Prefer an authorized-keys file. Bind it read-only at
`/home/user/.ssh/authorized_keys` (create its host parent/file beforehand), omit
`SSH_PASS`, and use `ssh -i YOUR_KEY -p 2222 user@127.0.0.1`. Host keys are generated
per instance. Mounted authorized keys are copied into owned runtime storage at
startup; restart after rotating that file. Root login and implicit password
authentication are disabled.

Docker-disabled tools need no privileged deployment:

```bash
docker run --rm -ti -e NODOCKER=true -e NOSSH=true d3k-local:debian-rootful /bin/bash
```

`NOK8S=true` retains Docker-only SOCKS. `NOPUBLIC=true` binds managed inner
publications to d3k's loopback; restrict **outer host** publications independently
with `-p 127.0.0.1:...`. Legacy flags now parse true/1/yes/on and false/0/no/off
(case insensitive); empty/unset are false and invalid values fail. In particular,
`NOK8S=false` enables Kubernetes. This differs from the old truthiness checks.

`D3K_STARTUP_TIMEOUT` is 300 seconds by default (1–86400). Inspect
`/run/d3k/startup.log` on failure. `D3K_K3S_IMAGE` overrides the locked K3s image
explicitly; an override is experimental until tested. `D3K_DOCKER_MODE=rootful`
is currently the only implemented mode. Conflicting Docker endpoints are errors.

Run `usage-help` inside d3k or read [USAGE.md](USAGE.md). The compatibility image
retains unrestricted sudo and rootful Docker; privileged nesting is **not a
sandbox for untrusted workloads**. Use a dedicated disposable VM for those.
Restart retains state; recreate a disposable container to start fresh. Existing
volumes are never automatically erased or migrated.

[Verification and rollback](docs/validation.md) covers retained evidence, scanner
comparisons, remaining mutable dependencies, and the gated full-image variant.
