#!/usr/bin/env bash
# Actual OpenAF status program; mock only runtime snapshots in an ordinary image.
set -euo pipefail
image=${1:?image}; out=${2:?evidence directory}
mkdir -p "$out"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
cat > "$tmp/runtime.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
case "$1" in
  mode) echo rootful;;
  snapshot)
    count=0; [ ! -f /tmp/status-count ] || count=$(cat /tmp/status-count)
    count=$((count+1)); echo "$count" > /tmp/status-count
    state=degraded
    case "$D3K_TEST_STATUS" in recover) [ "$count" -lt 2 ] || state=ready;; fatal) state=failed;; esac
    printf 'SSH\tdisabled\tfixture\nDocker\tready\tfixture\nKubernetes\t%s\tfixture\nSOCKS\tready\tfixture\n' "$state";;
  *) exit 2;;
esac
SH
chmod +x "$tmp/runtime.sh"
docker run --rm --network none -i --entrypoint bash \
  -v "$tmp/runtime.sh:/usr/local/lib/d3k/runtime.sh:ro" "$image" <<'SH' > "$out/results.log" 2>&1
set -euo pipefail
export D3K_TEST_STATUS=recover
status.js check=true json=true timeout=5 > /tmp/recover.json
grep -q '"ready":true' /tmp/recover.json
test "$(cat /tmp/status-count)" -ge 2
rm /tmp/status-count
set +e
status.js json=true timeout=5 > /tmp/human.json
code=$?
set -e
test "$code" = 1
test "$(cat /tmp/status-count)" = 1
rm /tmp/status-count
export D3K_TEST_STATUS=persistent
started=$SECONDS
set +e
status.js check=true json=true timeout=1 > /tmp/persistent.json
code=$?
set -e
test "$code" = 1
test "$((SECONDS-started))" -lt 6
grep -q '"ready":false' /tmp/persistent.json
test "$(cat /tmp/status-count)" -ge 2
rm /tmp/status-count
export D3K_TEST_STATUS=fatal
set +e
status.js check=true json=true timeout=5 > /tmp/fatal.json
code=$?
set -e
test "$code" = 1
test "$(cat /tmp/status-count)" = 1
grep -q '"state":"failed"' /tmp/fatal.json
echo 'PASS: real OpenAF status retries transient degradation, bounds persistent degradation, and stops on fatal failure'
SH
cat "$out/results.log"
