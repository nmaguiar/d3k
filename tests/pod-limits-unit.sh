#!/usr/bin/env bash
# Exercise test orchestration and negative results without a Kubernetes cluster.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
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
printf '%s\n' "$*" >> "$D3K_TEST_LIMIT_DIR/commands"
# All commands must select only the dedicated default test cluster.
[ "$1" = --context ] && [ "$2" = k3d-k3s-default ] || exit 99
shift 3 # context, name and request-timeout
if [ "${1:-}" = -n ]; then
  [ "$2" = "$(cat "$D3K_TEST_LIMIT_DIR/namespace")" ] || exit 98
  shift 2
fi
case "$*" in
  'get --raw=/readyz') echo ok;;
  'create namespace '*)
    echo "$3" > "$D3K_TEST_LIMIT_DIR/namespace"
    [ "$D3K_TEST_LIMIT_CASE" != collision ] || exit 1;;
  'label namespace '*) test "$3" = "$(cat "$D3K_TEST_LIMIT_DIR/namespace")";;
  'apply -f -') cat > "$D3K_TEST_LIMIT_DIR/manifest";;
  'get pod '*'{.status.phase}')
    case "$D3K_TEST_LIMIT_CASE" in
      timeout) echo Pending;;
      delayed)
        if [ ! -f "$D3K_TEST_LIMIT_DIR/delayed" ]; then touch "$D3K_TEST_LIMIT_DIR/delayed"; echo Pending; else echo Succeeded; fi;;
      *) echo Succeeded;;
    esac;;
  'get pod '*'.state.terminated.reason}'*)
    case "$D3K_TEST_LIMIT_CASE:$3" in
      missing:*) echo 'Error 77';;
      oom-fail:memory-limit) echo 'Error 1';;
      killed:memory-limit) echo 'Error 137';;
      cpu-fail:cpu-limit) echo 'Error 1';;
      *:cpu-limit) echo 'Completed 0';;
      *:memory-limit) echo 'OOMKilled 137';;
      *) exit 97;;
    esac;;
  'logs cpu-limit'*)
    [ "$D3K_TEST_LIMIT_CASE" != marker ] || exit 0
    echo 'PASS: effective CPU quota and increased throttling';;
  'logs memory-limit'*) echo 'memory.max=33554432';;
  'get pods -o wide'|'describe pod '*) echo 'scoped diagnostic fixture';;
  'delete namespace '*) test "$3" = "$(cat "$D3K_TEST_LIMIT_DIR/namespace")";;
  *) echo "unexpected kubectl operation: $*" >&2; exit 96;;
esac
SH
chmod +x "$tmp/bin/"*
export PATH="$tmp/bin:$PATH" D3K_LIB_DIR=$root/scripts D3K_LOCK_FILE=$root/versions.yaml
for fixture in pass delayed oom-fail killed cpu-fail marker missing timeout collision; do
  mkdir "$tmp/$fixture"
  export D3K_TEST_LIMIT_DIR=$tmp/$fixture D3K_TEST_LIMIT_CASE=$fixture
  code=0
  D3K_TEST_POD_LIMIT_TIMEOUT=3 bash "$root/tests/pod-limits.sh" > "$tmp/$fixture/output" 2>&1 || code=$?
  case "$fixture" in
    pass|delayed)
      test "$code" = 0
      grep -q 'PASS: Kubernetes CPU' "$tmp/$fixture/output"
      grep -Fq 'image: docker.io/library/nginx@sha256:' "$tmp/$fixture/manifest"
      if grep -q D3K_TEST_WEB_IMAGE "$tmp/$fixture/manifest"; then exit 1; fi;;
    missing) test "$code" = 77; grep -q 'NOT TESTED:' "$tmp/$fixture/output";;
    timeout) test "$code" = 124;;
    *) test "$code" = 1;;
  esac
  if [ "$fixture" = collision ]; then
    if grep -q 'delete namespace' "$tmp/$fixture/commands"; then echo 'FAIL deleted unowned namespace'; exit 1; fi
  else
    grep -q 'delete namespace d3k-limits-.*--wait=false' "$tmp/$fixture/commands"
    if [ "$fixture" != pass ] && [ "$fixture" != delayed ]; then
      grep -q 'describe pod cpu-limit' "$tmp/$fixture/commands"
    fi
  fi
  if grep -Eq 'delete (pods|nodes|volumes)|--all' "$tmp/$fixture/commands"; then exit 1; fi
done
# Verify the shared suite preserves NOT TESTED and failure exit statuses.
cat > "$tmp/bin/docker" <<'SH'
#!/usr/bin/env bash
case "$1" in
  info|image|logs|cp|rm) exit 0;;
  run) exit "$D3K_TEST_RESULT_CODE";;
  inspect) exit 1;;
  *) exit 95;;
esac
SH
chmod +x "$tmp/bin/docker"
for expected in 77 42; do
  code=0
  D3K_TEST_RESULT_CODE=$expected bash "$root/tests/integration.sh" fixture "$tmp/result-$expected" > "$tmp/result-$expected.log" 2>&1 || code=$?
  test "$code" = "$expected"
  if [ "$expected" = 77 ]; then expected_status='NOT TESTED'; else expected_status=FAIL; fi
  awk -F '\t' -v expected="$expected_status" '$1=="disabled" && $2==expected {found=1} END{exit !found}' "$tmp/result-$expected/results.tsv"
done
echo 'PASS: pod-limit success/recovery, CPU/OOM failures, missing controls, deadline, scoped diagnostics and namespace ownership (mock Kubernetes)'
