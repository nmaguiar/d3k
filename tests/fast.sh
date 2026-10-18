#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
root=$PWD
source scripts/lock.sh
export D3K_LOCK_FILE=$root/versions.yaml
awk '/^[A-Za-z][A-Za-z0-9_]*:/ { if (++seen[$1] > 1) exit 1 }' versions.yaml
for key in DEBIAN_BASE UBUNTU_BASE PUBLISHED_BUILD K3S_IMAGE REGISTRY_IMAGE K3D_PROXY_IMAGE K3D_TOOLS_IMAGE SOCKS_IMAGE TRIVY_IMAGE TEST_WEB_IMAGE; do
  [[ "$(lock_get "$key")" =~ @sha256:[a-f0-9]{64}$ ]]
done
while read -r key _; do
  case "$key" in *_SHA256:) [[ "$(lock_get "${key%:}")" =~ ^[a-f0-9]{64}$ ]];; esac
done < versions.yaml
grep -Fxq "ARG BASE_IMAGE=$(lock_get DEBIAN_BASE)" Dockerfile
grep -Fq "image: $(lock_get SOCKS_IMAGE)" scripts/socks.yaml
for file in ojob_p1.sh scripts/*.sh tests/*.sh; do bash -n "$file"; done
source scripts/environment.sh
for value in true TRUE 1 yes On; do flag=$value; d3k_bool flag; [ "$flag" = true ]; done
for value in '' false FALSE 0 no OFF; do flag=$value; d3k_bool flag; [ "$flag" = false ]; done
if (flag=maybe; d3k_bool flag) 2>/dev/null; then echo 'FAIL invalid boolean accepted'; exit 1; fi
(D3K_DOCKER_MODE=rootless; d3k_resolve; [ "$DOCKER_HOST" = unix:///var/run/docker.sock ])
if (D3K_DOCKER_MODE=external; d3k_resolve) 2>/dev/null; then echo 'FAIL reserved mode accepted'; exit 1; fi
if (D3K_DOCKER_MODE=typo; d3k_resolve) 2>/dev/null; then echo 'FAIL unknown mode accepted'; exit 1; fi
if (DOCKER_HOST=tcp://example.invalid:2375; d3k_resolve) 2>/dev/null; then echo 'FAIL foreign endpoint accepted'; exit 1; fi
if (DOCKER_CONTEXT=foreign; d3k_resolve) 2>/dev/null; then echo 'FAIL foreign context accepted'; exit 1; fi
for value in 0 -1 1.5 abc 01 86401; do
  if (D3K_STARTUP_TIMEOUT=$value; d3k_resolve) 2>/dev/null; then echo 'FAIL invalid timeout accepted'; exit 1; fi
done
(NODOCKER=TRUE; NOK8S=false; d3k_resolve; [ "$NOK8S" = true ])
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/bin" "$tmp/run"
cat > "$tmp/bin/ojob" <<'SH'
#!/usr/bin/env bash
printf '%s\n' "$@" > "$D3K_TEST_ARGS"
SH
cat > "$tmp/emit" <<'SH'
#!/usr/bin/env bash
printf '<%s>\n' "$@"
cat
echo stderr >&2
exit 37
SH
chmod +x "$tmp/bin/ojob" "$tmp/emit"
set +e
printf 'input\n' | PATH="$tmp/bin:$PATH" D3K_TEST_ARGS="$tmp/args" D3K_LIB_DIR="$root/scripts" D3K_RUNTIME_DIR="$tmp/run" NODOCKER=true NOSSH=true bash ojob_p1.sh "$tmp/emit" 'a b' '' '*literal' > "$tmp/out" 2> "$tmp/err"
code=$?
set -e
[ "$code" = 37 ]
printf '<a b>\n<>\n<*literal>\ninput\n' > "$tmp/expected"
cmp "$tmp/expected" "$tmp/out"
[ "$(cat "$tmp/err")" = stderr ]
for ((i=0; i<50; i++)); do [ ! -s "$tmp/args" ] || break; sleep 0.02; done
[ "$(cat "$tmp/args")" = /home/user/.p2.yaml ]
# Verify disabled dependencies never invoke even a deliberately failing Docker.
cat > "$tmp/bin/docker" <<'SH'
#!/usr/bin/env bash
echo forbidden Docker probe >&2
exit 99
SH
chmod +x "$tmp/bin/docker"
PATH="$tmp/bin:$PATH" D3K_LIB_DIR="$root/scripts" D3K_RUNTIME_DIR="$tmp/run" NODOCKER=true NOSSH=true bash scripts/runtime.sh snapshot > "$tmp/snapshot"
[ "$(awk -F '\t' '$2=="disabled"{n++} END{print n}' "$tmp/snapshot")" = 4 ]
# A running pod is insufficient when the node is not Ready. Mock command
# outcomes only; bounded real waits are covered by the container negative case.
cat > "$tmp/bin/timeout" <<'SH'
#!/usr/bin/env bash
shift
exec "$@"
SH
cat > "$tmp/bin/kubectl" <<'SH'
#!/usr/bin/env bash
case "$*" in *'wait node'*) echo 'fixture node not Ready' >&2; exit 1;; *'get pods'*) echo '{"items":[{"status":{"phase":"Running"}}]}';; esac
SH
printf '#!/usr/bin/env bash\nexit 0\n' > "$tmp/bin/docker"
printf '#!/usr/bin/env bash\nexit 0\n' > "$tmp/bin/curl"
chmod +x "$tmp/bin/timeout" "$tmp/bin/kubectl" "$tmp/bin/docker" "$tmp/bin/curl"
PATH="$tmp/bin:$PATH" D3K_LIB_DIR="$root/scripts" D3K_RUNTIME_DIR="$tmp/run" NODOCKER=false NOK8S=false NOSSH=true bash scripts/runtime.sh snapshot > "$tmp/unready"
awk -F '\t' '$1=="Kubernetes" && $2!="ready"{found=1} END{exit !found}' "$tmp/unready"
grep -q 'fixture node not Ready' "$tmp/run/kube-nodes.log"
test -s "$tmp/run/kube-api.log"
test ! -e "$tmp/run/kube-coredns.log"
printf '#!/usr/bin/env bash\nprintf "<%%s>\\n" "$@"\n' > "$tmp/bin/docker"
PATH="$tmp/bin:$PATH" sh scripts/docker-compose.sh -f 'a b.yaml' config > "$tmp/compose"
printf '<compose>\n<-f>\n<a b.yaml>\n<config>\n' > "$tmp/compose.expected"
cmp "$tmp/compose" "$tmp/compose.expected"
PATH="$tmp/bin:$PATH" sh scripts/docker-compose.sh --version > "$tmp/compose"
printf '<compose>\n<version>\n' > "$tmp/compose.expected"
cmp "$tmp/compose" "$tmp/compose.expected"
if (D3K_K3S_IMAGE='--bad image'; d3k_resolve) 2>/dev/null; then echo 'FAIL invalid image accepted'; exit 1; fi
if (SSH_PASS=''; d3k_resolve) 2>/dev/null; then echo 'FAIL empty password accepted'; exit 1; fi
# Exercise the feasibility decision independently of available host cgroups.
# These mocks prove rejection logic, never effective resource enforcement.
source scripts/rootless.sh
cat > "$tmp/bin/docker" <<'SH'
#!/usr/bin/env bash
case "$*" in
  *CgroupDriver*) printf '%s\n' "$D3K_TEST_CGROUP_DRIVER";;
  *CgroupVersion*) printf '%s\n' "$D3K_TEST_CGROUP_VERSION";;
esac
SH
for pair in 'none 2' 'cgroupfs 2' 'systemd 1'; do
  read -r driver version <<< "$pair"
  if (export PATH="$tmp/bin:$PATH" D3K_RUNTIME_DIR="$tmp/run" D3K_TEST_CGROUP_DRIVER=$driver D3K_TEST_CGROUP_VERSION=$version; d3k_rootless_cgroups) 2>/dev/null; then
    echo 'FAIL unusable rootless cgroups accepted'; exit 1
  fi
done
(export PATH="$tmp/bin:$PATH" D3K_RUNTIME_DIR="$tmp/run" D3K_TEST_CGROUP_DRIVER=systemd D3K_TEST_CGROUP_VERSION=2; d3k_rootless_cgroups)
grep -q 'effective_resource_limits=NOT TESTED' "$tmp/run/rootless-cgroups.txt"
echo 'PASS: syntax, booleans, mode/endpoint/timeout rejection, argv/stdin/stderr/exit status, NODOCKER probes'
bash tests/scan.sh
