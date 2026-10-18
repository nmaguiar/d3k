#!/usr/bin/env bash
# Ordinary container: a prerequisite rejection is evidence of the rejection
# path, never evidence that rootless integration passed on this host.
set -euo pipefail
image=${1:?image}; out=${2:?evidence directory}
mkdir -p "$out"
name=d3k-rootless-negative-$(date +%s)-$$
cleanup() {
  docker cp "$name:/run/d3k/." "$out/runtime" 2>/dev/null || true
  docker rm -f "$name" >/dev/null 2>&1 || true
}
trap cleanup EXIT
docker run -d --name "$name" --network none --security-opt no-new-privileges=true -e NOSSH=true \
  -e D3K_DOCKER_MODE=rootless -e D3K_STARTUP_TIMEOUT=15 "$image" >/dev/null
set +e
docker exec "$name" status.js check=true json=true timeout=25 > "$out/status.json"
code=$?
set -e
[ "$code" = 1 ]
grep -q '"mode":"rootless"' "$out/status.json"
grep -q '"Docker":{"state":"failed"' "$out/status.json"
docker exec "$name" bash -c '
  set -e
  test "$(id -u)" = 1001
  test "$DOCKER_HOST" = unix:///var/run/docker.sock
  test ! -S /var/run/docker.sock
  ! ps -eo comm= | grep -x dockerd
  test ! -e /run/d3k/docker.pid
  test ! -e /var/lib/docker/image
  grep -q "namespace/mapping probe failed" /run/d3k/startup.log
  test -s /run/d3k/rootless-prerequisites.log
  cat /usr/share/d3k/rootless-toolchain.txt
' > "$out/checks.log"
printf 'negative-prerequisites\tPASS\tbounded rejection, rootless mode, no rootful fallback\n'
printf 'rootless-workflows\tNOT TESTED\trequires disposable privileged native runners\n'
