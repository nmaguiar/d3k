#!/usr/bin/env bash
# Called only by the disposable privileged integration runner.
set -euo pipefail
image=${1:?}; out=${2:?}
mkdir -p "$out"
[ "${D3K_TEST_PRIVILEGED:-0}" = 1 ] || { echo 'NOT TESTED: disposable privileged runner not selected'; exit 77; }
name=d3k-docker-only-$(date +%s)-$$
cleanup() { docker cp "$name:/run/d3k/startup.log" "$out/startup.log" 2>/dev/null || true; docker rm -f "$name" >/dev/null 2>&1 || true; }
trap cleanup EXIT
docker run -d --name "$name" --privileged --cgroupns=host -e NOK8S=true -e NOPUBLIC=true -e NOSSH=true -p 127.0.0.1::1080 "$image" >/dev/null
docker exec "$name" status.js check=true json=true timeout=180 > "$out/status.json"
docker exec "$name" bash -c '
  set -euo pipefail
  source /usr/local/lib/d3k/lock.sh
  docker network create fixture
  docker run -d --name fixture-web --network fixture "$(lock_get TEST_WEB_IMAGE)"
  docker network connect fixture d3k-socks
  docker restart d3k-socks
  ready=false
  for ((i=0; i<20; i++)); do
    if curl --fail --silent --max-time 5 --noproxy "" --proxy socks5h://127.0.0.1:1080 http://fixture-web/; then ready=true; break; fi
    sleep 1
  done
  [ "$ready" = true ]
  [ "$(docker port d3k-socks 1080/tcp)" = 127.0.0.1:1080 ]
'
port=$(docker port "$name" 1080/tcp)
if curl --fail --silent --max-time 5 --noproxy '' --proxy "socks5h://$port" http://fixture-web/; then
  echo 'FAIL: inner loopback unexpectedly reachable through outer publication' >&2; exit 1
fi
# A stopped incompatible retained publication must be rejected, not rewritten.
docker exec "$name" bash -c '
  set -e
  source /usr/local/lib/d3k/lock.sh
  docker rm -f d3k-socks
  docker create --name d3k-socks -p 0.0.0.0:1080:1080 "$(lock_get SOCKS_IMAGE)"
'
docker restart -t 20 "$name" >/dev/null
set +e
docker exec "$name" status.js check=true json=true timeout=180 > "$out/incompatible-store.json"
code=$?
set -e
[ "$code" = 1 ]
grep -q '"SOCKS":{"state":"failed"' "$out/incompatible-store.json"
echo 'PASS: Docker-only SOCKS remote DNS, NOPUBLIC boundary, incompatible retained binding rejection'
