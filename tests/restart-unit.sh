#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
source "$root/scripts/engine.sh"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/bin" "$tmp/run"
cat > "$tmp/bin/ps" <<'SH'
#!/usr/bin/env bash
if [ "$*" = '-eo pid=,uid=,comm=' ]; then printf '%s\n' "$D3K_TEST_PROCESSES"; else printf '%s\n' "${D3K_TEST_PS_STATUS:-}"; fi
SH
cat > "$tmp/bin/sudo" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
shift
case "$1" in
  readlink) echo /usr/bin/containerd;;
  mktemp) echo /run/d3k-rootful.TEST0001;;
  stat) echo 0:700;;
  dockerd) echo 'fixture dockerd exit 42' >&2; exit 42;;
  *) echo 'unexpected sudo operation' >&2; exit 99;;
esac
SH
cat > "$tmp/bin/timeout" <<'SH'
#!/usr/bin/env bash
while [ "$#" -gt 0 ]; do
  case "$1" in --foreground) shift;; -k) shift 2;; *) shift; break;; esac
done
exec "$@"
SH
printf '#!/usr/bin/env bash\nexit 1\n' > "$tmp/bin/docker"
chmod +x "$tmp/bin/"*
export PATH="$tmp/bin:$PATH" D3K_TEST_PROCESSES='123 0 sleep'
export D3K_RUNTIME_DIR=$tmp/run D3K_LIB_DIR=$root/scripts
run() { "$@"; }
d3k_engine_runtime > "$tmp/prepare"
test "$(cat "$tmp/run/engine-runtime")" = /run/d3k-rootful.TEST0001
export D3K_TEST_PROCESSES='123 0 containerd'
if d3k_engine_runtime > "$tmp/live" 2>&1; then echo 'FAIL existing engine accepted'; exit 1; fi
grep -q 'refusing a second managed engine' "$tmp/live"
export D3K_TEST_PROCESSES='123 0 sleep'
D3K_TEST_PS_STATUS=S d3k_child_alive 123
! D3K_TEST_PS_STATUS=Z d3k_child_alive 123
! D3K_TEST_PS_STATUS='' d3k_child_alive 123
! d3k_child_alive invalid
if [ "$(uname -s)" = Linux ] && [ ! -L /var/run/docker.sock ]; then
  started=$SECONDS
  set +e
  NOSSH=true NODOCKER=false D3K_STARTUP_TIMEOUT=20 bash "$root/scripts/runtime.sh" start
  code=$?
  set -e
  test "$code" = 1
  test "$((SECONDS-started))" -lt 10
  if [ ! -f "$tmp/run/Docker.state" ]; then cat "$tmp/run/startup.log"; exit 1; fi
  test "$(cat "$tmp/run/Docker.state")" = failed
  grep -q 'managed engine exited (exit 42)' "$tmp/run/startup.log"
  echo 'PASS: early managed-engine exit (mock engine, Linux)'
else
  echo 'NOT TESTED: mock engine startup requires Linux with a non-symlink canonical socket'
fi
# Concurrent probes retain complete logs and cannot remove another probe's tmp.
cat > "$tmp/bin/kubectl" <<'SH'
#!/usr/bin/env bash
sleep 0.1
echo 'fixture probe complete'
SH
chmod +x "$tmp/bin/kubectl"
children=()
for ((i=0; i<8; i++)); do
  NOSSH=true NODOCKER=false bash "$root/scripts/runtime.sh" probe Kubernetes 2> "$tmp/probe-$i.err" &
  children+=("$!")
done
for child in "${children[@]}"; do wait "$child"; done
for label in api nodes coredns; do
  test "$(wc -l < "$tmp/run/kube-$label.log" | tr -d ' ')" = 2
  grep -q '^fixture probe complete$' "$tmp/run/kube-$label.log"
done
test -z "$(find "$tmp/run" -name 'kube-*.????????' -print)"
! grep -q 'cannot stat' "$tmp/"*.err
echo 'PASS: engine identity refusal, child liveness and concurrent probe logs (mock commands)'
