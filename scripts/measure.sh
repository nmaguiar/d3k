#!/usr/bin/env bash
# Full-engine measurements require the same disposable runner as integration.
set -euo pipefail
image=${1:?image}; out=${2:?output directory}
mkdir -p "$out"
if [ "${D3K_TEST_PRIVILEGED:-0}" != 1 ]; then
  echo 'NOT TESTED: readiness/disk measurements require a disposable privileged runner' > "$out/status.txt"
  exit 77
fi
name=d3k-measure-$(date +%s)-$$
cleanup() {
  local code=$?
  if [ "$code" != 0 ]; then
    bash "$(dirname "$0")/../tests/diagnostics.sh" "$name" "$out/$sample.diagnostics" || true
  fi
  docker rm -f "$name" >/dev/null 2>&1 || true
  return "$code"
}
trap cleanup EXIT
printf 'sample\tcold_seconds\trestart_seconds\n' > "$out/readiness.tsv"
TIMEFORMAT=%R
for sample in 1 2 3; do
  { time {
    docker run -d --name "$name" --label io.d3k.test=true --privileged --cgroupns=host -e NOSSH=true "$image" > "$out/$sample.container.txt"
    docker exec "$name" status.js check=true json=true timeout=300 > "$out/$sample.cold.json"
  }; } 2> "$out/$sample.cold.seconds"
  { time {
    docker restart -t 30 "$name" >/dev/null
    docker exec "$name" status.js check=true json=true timeout=300 > "$out/$sample.warm.json"
  }; } 2> "$out/$sample.warm.seconds"
  docker exec "$name" sudo -n du -sk /var/lib/docker /home/user/.kube /run/d3k > "$out/$sample.disk-kib.txt"
  printf '%s\t%s\t%s\n' "$sample" "$(cat "$out/$sample.cold.seconds")" "$(cat "$out/$sample.warm.seconds")" >> "$out/readiness.tsv"
  docker exec "$name" docker exec k3d-k3s-default-server-0 crictl --runtime-endpoint unix:///run/k3s/containerd/containerd.sock images -o json > "$out/$sample.k3s-images.json"
  docker rm -f "$name" >/dev/null
done
printf 'Cold: cached outer image, fresh inner store per sample. Warm: restart of that initialized instance, including shutdown.\n' > "$out/conditions.txt"
for metric in cold warm; do
  sort -n "$out/1.$metric.seconds" "$out/2.$metric.seconds" "$out/3.$metric.seconds" | awk -v metric="$metric" 'NR==1{min=$1} NR==2{median=$1} NR==3{print metric, "min=" min, "median=" median, "max=" $1}' >> "$out/conditions.txt"
done
