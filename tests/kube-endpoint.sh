#!/usr/bin/env bash
# Test publication selection and kubeconfig repair without starting a daemon.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/bin" "$tmp/run"
cat > "$tmp/bin/timeout" <<'SH'
#!/usr/bin/env bash
shift
exec "$@"
SH
cat > "$tmp/bin/docker" <<'SH'
#!/usr/bin/env bash
printf '%s\n' "$D3K_TEST_API_PORT"
SH
cat > "$tmp/bin/kubectl" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
case "$*" in
  *'contexts[0].context.cluster'*) echo "${D3K_TEST_CLUSTER:-k3d-k3s-default}";;
  *'clusters[0].cluster.server'*) cat "$D3K_TEST_ENDPOINT_FILE";;
  'config set-cluster k3d-k3s-default --server='*)
    printf '%s\n' "${4#--server=}" > "$D3K_TEST_ENDPOINT_FILE";;
  *) exit 2;;
esac
SH
chmod +x "$tmp/bin/"*
export PATH="$tmp/bin:$PATH" D3K_LIB_DIR=$root/scripts D3K_RUNTIME_DIR=$tmp/run
export NODOCKER=false NOSSH=true D3K_DOCKER_MODE=rootful D3K_TEST_ENDPOINT_FILE=$tmp/server
for port in 6443 49152 65535; do
  # Retained invalid endpoints must be repaired from the effective publication.
  printf 'https://0.0.0.0:0\n' > "$tmp/server"
  D3K_TEST_API_PORT=$port bash "$root/scripts/runtime.sh" kube-endpoint > "$tmp/output"
  test "$(cat "$tmp/server")" = "https://127.0.0.1:$port"
done
for port in '' 0 00 65536 invalid $'6443\n6444'; do
  printf 'unchanged\n' > "$tmp/server"
  if D3K_TEST_API_PORT=$port bash "$root/scripts/runtime.sh" kube-endpoint > "$tmp/output" 2>&1; then
    echo 'FAIL invalid API publication accepted'; exit 1
  fi
  test "$(cat "$tmp/server")" = unchanged
done
printf 'unchanged\n' > "$tmp/server"
if D3K_TEST_API_PORT=49152 D3K_TEST_CLUSTER=unrelated bash "$root/scripts/runtime.sh" kube-endpoint > "$tmp/output" 2>&1; then
  echo 'FAIL unrelated cluster reference accepted'; exit 1
fi
test "$(cat "$tmp/server")" = unchanged
echo 'PASS: Kubernetes endpoint repair, nonzero publication validation and loopback advertisement (mock commands)'
