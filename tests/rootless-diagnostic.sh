#!/usr/bin/env bash
# Explicit Docker-only experiment; never evidence of cgroup/Kubernetes support.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
image=${1:?image}; out=${2:?evidence directory}
mkdir -p "$out"; out=$(cd "$out" && pwd)
printf 'test\tstatus\tdetail\n' > "$out/results.tsv"
record() { printf '%s\t%s\t%s\n' "$1" "$2" "$3" | tee -a "$out/results.tsv"; }
[ "${D3K_TEST_PRIVILEGED:-0}" = 1 ] || { record prerequisites 'NOT TESTED' 'requires explicit disposable privileged runner'; exit 77; }
docker info > "$out/host-docker-info.txt" 2>&1 || { record prerequisites 'NOT TESTED' 'Docker unavailable'; exit 77; }
docker image inspect "$image" --format 'id={{.Id}} arch={{.Architecture}}' > "$out/image.txt"
name=d3k-rootless-diagnostic-$(date +%s)-$$
cleanup() {
  local code=$?
  if [ "$code" != 0 ]; then bash "$root/tests/diagnostics.sh" "$name" "$out/diagnostics" || true; fi
  docker logs "$name" > "$out/container.log" 2>&1 || true
  docker cp "$name:/run/d3k/." "$out/runtime" 2>/dev/null || true
  docker rm -f "$name" >/dev/null 2>&1 || true
}
trap cleanup EXIT
check() {
  local test=$1; shift
  if "$@" > "$out/$test.log" 2>&1; then record "$test" PASS 'see log'
  else local code=$?; record "$test" FAIL 'see log'; return "$code"; fi
}
inside() { docker exec "$name" timeout --foreground -k 5 180 "$@"; }
docker run -d --name "$name" --label io.d3k.test=true --privileged --cgroupns=host \
  -e D3K_DOCKER_MODE=rootless -e D3K_ROOTLESS_DIAGNOSTIC=true \
  -e NOK8S=true -e NOSSH=true -e D3K_STARTUP_TIMEOUT=180 "$image" > "$out/container-id.txt"
check readiness inside status.js check=true json=true timeout=180
check identity inside /usr/local/lib/d3k/runtime.sh rootless-identity
check endpoint inside bash -c 'set -e; test "$DOCKER_HOST" = unix:///var/run/docker.sock; env -u DOCKER_HOST docker info; test ! -e /run/d3k/docker.pid; test ! -e /run/d3k/Kubernetes.state || test "$(cat /run/d3k/Kubernetes.state)" = disabled; ! docker ps -a --format "{{.Names}}" | grep "^k3d-"; cat /run/d3k/rootless-cgroups.txt'
record resource-controls 'NOT TESTED' 'diagnostic mode permits unsupported cgroup controls; no enforcement claim'
record kubernetes 'NOT TESTED' 'explicit NOK8S=true'
failed=0
check containers-networking inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
fixture=$(lock_get TEST_WEB_IMAGE)
docker pull "$fixture"
docker network create diagnostic-net
docker run -d --name diagnostic-web --network diagnostic-net "$fixture"
docker exec diagnostic-web nginx -t
docker logs diagnostic-web
docker run --rm --network diagnostic-net "$fixture" sh -c "wget -q -O - http://diagnostic-web/ | grep nginx"
' || failed=1
check bind-ownership inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
mkdir -p /tmp/d3k-diagnostic/ownership
docker run --rm -u 1001:1001 -v /tmp/d3k-diagnostic/ownership:/work "$(lock_get TEST_WEB_IMAGE)" sh -c "echo owned > /work/value"
test "$(stat -c %u /tmp/d3k-diagnostic/ownership/value)" = 1001
' || failed=1
check storage inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
fixture=$(lock_get TEST_WEB_IMAGE)
mkdir -p /tmp/d3k-diagnostic/work
docker run --rm -v /tmp/d3k-diagnostic/work:/work "$fixture" sh -c "echo owned > /work/value"
test "$(stat -c %u /tmp/d3k-diagnostic/work/value)" = 1001
docker volume create diagnostic-data
docker run --rm -v diagnostic-data:/data "$fixture" sh -c "echo retained > /data/value"
docker run --rm -v diagnostic-data:/data "$fixture" grep retained /data/value
' || failed=1
check builds inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
printf "FROM %s\nRUN echo built > /marker\n" "$(lock_get TEST_WEB_IMAGE)" > /tmp/d3k-diagnostic/Dockerfile
docker build -t diagnostic:build /tmp/d3k-diagnostic
docker buildx build --load -t diagnostic:buildx /tmp/d3k-diagnostic
docker run --rm diagnostic:build grep built /marker
docker run --rm diagnostic:buildx grep built /marker
' || failed=1
check compose inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
printf "services:\n  web:\n    image: %s\n    volumes:\n    - ./work:/work\n" "$(lock_get TEST_WEB_IMAGE)" > /tmp/d3k-diagnostic/compose.yaml
docker compose -p diagnostic -f /tmp/d3k-diagnostic/compose.yaml up -d
docker-compose -p diagnostic -f /tmp/d3k-diagnostic/compose.yaml exec -T web grep owned /work/value
docker compose -p diagnostic -f /tmp/d3k-diagnostic/compose.yaml down
' || failed=1
check restart docker restart -t 20 "$name"
check restart-readiness inside status.js check=true json=true timeout=180
check restart-identity inside /usr/local/lib/d3k/runtime.sh rootless-identity
check persistence inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
docker run --rm -v diagnostic-data:/data "$(lock_get TEST_WEB_IMAGE)" grep retained /data/value
docker run --rm diagnostic:buildx grep built /marker
' || failed=1
exit "$failed"
