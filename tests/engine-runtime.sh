#!/usr/bin/env bash
# Exercise real dockerd/containerd initialization, without privileged networking.
set -euo pipefail
image=${1:?image}; out=${2:?evidence directory}
mkdir -p "$out"
docker run --rm --network none -i --entrypoint bash -e NOSSH=true \
  -e D3K_STARTUP_TIMEOUT=15 "$image" <<'SH' > "$out/results.log" 2>&1
set -euo pipefail
sleep 90 & unrelated=$!
trap 'kill "$unrelated" 2>/dev/null || true' EXIT
sudo -n mkdir -p /var/run/docker/containerd /var/lib/docker
printf '%s\n' "$unrelated" | sudo -n tee /var/run/docker/containerd/containerd.pid >/dev/null
printf 'preserved\n' | sudo -n tee /var/lib/docker/d3k-test-sentinel >/dev/null
source /usr/local/lib/d3k/engine.sh
d3k_child_alive "$unrelated"
started=$SECONDS
/usr/local/lib/d3k/runtime.sh start & worker=$!
set +e
status.js check=true json=true timeout=20 > /tmp/status.json
code=$?
wait "$worker"
worker_code=$?
set -e
test "$code" = 1
test "$worker_code" != 0
test "$((SECONDS-started))" -lt 15
grep -q '"Docker":{"state":"failed"' /tmp/status.json
test "$(sudo -n cat /var/run/docker/containerd/containerd.pid)" = "$unrelated"
d3k_child_alive "$unrelated"
test "$(sudo -n cat /var/lib/docker/d3k-test-sentinel)" = preserved
execution=$(cat /run/d3k/engine-runtime)
test "$(sudo -n stat -c '%u:%a' "$execution")" = 0:700
grep -q "address=$execution/containerd/containerd.sock" /run/d3k/startup.log
grep -q 'started new containerd process' /run/d3k/startup.log
! grep -q 'containerd is still running' /run/d3k/startup.log
cat /run/d3k/startup.log
echo 'PASS: real engine uses fresh transient state, preserves old PID/data/unrelated process and reports missing privileges promptly'
SH
cat "$out/results.log"
