#!/usr/bin/env bash
# Missing privileges must fail boundedly; this is not a privileged workflow pass.
set -euo pipefail
image=${1:?}; out=${2:?}
mkdir -p "$out"
name=d3k-negative-$(date +%s)-$$
cleanup() { docker cp "$name:/run/d3k/startup.log" "$out/startup.log" 2>/dev/null || true; docker rm -f "$name" >/dev/null 2>&1 || true; }
trap cleanup EXIT
docker run -d --name "$name" --network none -e NOSSH=true -e D3K_STARTUP_TIMEOUT=5 "$image" >/dev/null
set +e
docker exec "$name" status.js check=true json=true timeout=10 > "$out/status.json"
code=$?
set -e
[ "$code" = 1 ]
grep -q '"Docker":{"state":"failed"' "$out/status.json"
echo 'PASS: missing engine privileges produce bounded failed readiness'
