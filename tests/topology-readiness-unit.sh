#!/usr/bin/env bash
# Command mocks verify sequencing/retry deadlines; no network parity is inferred.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
source "$root/tests/topology-readiness.sh"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/bin"
cat > "$tmp/bin/timeout" <<'SH'
#!/usr/bin/env bash
while [ "$#" -gt 0 ]; do
  case "$1" in --foreground) shift;; -k) shift 2;; *) shift; break;; esac
done
exec "$@"
SH
cat > "$tmp/bin/kubectl" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "$*" >> "$D3K_TEST_DNS_DIR/commands"
case "$*" in
  *'rollout status deployment/coredns'*)
    [ "$D3K_TEST_DNS_MODE" != coredns-fail ] || exit 1
    touch "$D3K_TEST_DNS_DIR/coredns-ready";;
  *'exec '*'node-echo.default.svc.cluster.local:8080/'*)
    test -f "$D3K_TEST_DNS_DIR/coredns-ready"
    pod=''
    while [ "$#" -gt 1 ]; do
      if [ "$1" = exec ]; then pod=$2; break; fi
      shift
    done
    [ -n "$pod" ] || exit 2
    marker=$D3K_TEST_DNS_DIR/$pod
    if [ "$D3K_TEST_DNS_MODE" = never ] || [ ! -f "$marker" ]; then
      touch "$marker"
      echo 'wget: bad address (fixture)' >&2
      exit 1
    fi
    printf 'node-echo-b\n';;
  *) exit 2;;
esac
SH
chmod +x "$tmp/bin/"*
export PATH="$tmp/bin:$PATH" D3K_TEST_DNS_DIR=$tmp D3K_TEST_DNS_MODE=delayed
pods=$'node-echo-a 10.42.0.2\nnode-echo-b 10.42.1.2'
topology_wait_dns k3d-fixture "$pods" 10 > "$tmp/success"
grep -q 'pod=node-echo-a response=node-echo-b' "$tmp/success"
grep -q 'pod=node-echo-b response=node-echo-b' "$tmp/success"
head -n 1 "$tmp/commands" | grep -q 'rollout status deployment/coredns'
# Restarted pods must be checked again with the refreshed pod inventory.
topology_wait_dns k3d-fixture "$pods" 10 > "$tmp/restart"
grep -q 'pod=node-echo-b' "$tmp/restart"
export D3K_TEST_DNS_MODE=never
started=$SECONDS
if topology_wait_dns k3d-fixture "$pods" 1 > "$tmp/timeout"; then
  echo 'FAIL permanently unavailable DNS accepted'; exit 1
fi
[ "$((SECONDS-started))" -le 5 ]
grep -q 'timed out: context=k3d-fixture pod=node-echo-a' "$tmp/timeout"
export D3K_TEST_DNS_MODE=coredns-fail
: > "$tmp/commands"
if topology_wait_dns k3d-fixture "$pods" 1 > "$tmp/coredns"; then
  echo 'FAIL unavailable CoreDNS accepted'; exit 1
fi
! grep -q 'exec ' "$tmp/commands"
if topology_wait_dns k3d-fixture '' 1 > "$tmp/empty"; then
  echo 'FAIL empty pod inventory accepted'; exit 1
fi
bash "$root/tests/topology-readiness.sh" diagnostics k3d-fixture > "$tmp/diagnostics"
grep -q -- '--context k3d-fixture.*get endpointslices' "$tmp/diagnostics"
grep -q -- '--context k3d-fixture.*logs deployment/coredns' "$tmp/diagnostics"
! grep -q 'k3d-k3s-default' "$tmp/diagnostics"
echo 'PASS: CoreDNS barrier, all-pod DNS/Service checks, delayed DNS, restart and bounded failure (mock commands)'
