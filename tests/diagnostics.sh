#!/usr/bin/env bash
# Read-only, bounded diagnostics before the caller removes its disposable d3k.
# Never dump container environment, raw kubeconfig, Secrets or full inspect data.
set -uo pipefail
name=${1:?container}; out=${2:?output directory}
docker inspect --format '{{.Name}}' "$name" >/dev/null 2>&1 || exit 0
mkdir -p "$out"
docker cp "$name:/run/d3k/." "$out/runtime" 2>/dev/null || true
docker exec -i "$name" timeout --foreground -k 2 45 bash -s <<'DIAGNOSTICS' 2>&1 | awk '
  tolower($0) ~ /token|password|secret|client-key-data|certificate-authority-data/ { print "[redacted credential-related diagnostic line]"; next }
  { print }
' > "$out/cluster.log"
set +e
check() {
  printf '\n--- %s ---\n' "$*"
  timeout -k 1 5 "$@"
  printf 'diagnostic_exit=%s\n' "$?"
}
for file in /run/d3k/kube-api.log /run/d3k/kube-nodes.log /run/d3k/kube-coredns.log /run/d3k/rootless-cgroups.txt; do
  [ ! -f "$file" ] || { printf '\n--- %s ---\n' "$file"; cat "$file"; }
done
check docker info --format 'engine={{.ServerVersion}} cgroups={{.CgroupVersion}} driver={{.CgroupDriver}} storage={{.Driver}} security={{json .SecurityOptions}}'
check docker ps -a --format '{{.Names}} {{.Status}}'
check kubectl config current-context
check kubectl --context k3d-k3s-default --request-timeout=4s config view --minify -o 'jsonpath={.clusters[0].cluster.server}'
check kubectl --context k3d-k3s-default --request-timeout=4s get --raw=/readyz?verbose
check kubectl --context k3d-k3s-default --request-timeout=4s get nodes -o wide
check kubectl --context k3d-k3s-default --request-timeout=4s get pods -A -o wide
check kubectl --context k3d-k3s-default --request-timeout=4s -n kube-system describe deployment coredns
check kubectl --context k3d-k3s-default --request-timeout=4s get events -A --sort-by=.lastTimestamp
nodes=$(timeout 5 docker ps -a --format '{{.Names}}')
count=0
while IFS= read -r node; do
  case "$node" in k3d-*-server-*|k3d-*-agent-*|k3d-*-serverlb)
    check docker logs --tail 100 "$node"
    count=$((count+1)); [ "$count" -lt 8 ] || break;;
  esac
done <<< "$nodes"
DIAGNOSTICS
# Preserve partial output even if the overall diagnostics deadline was reached.
exit 0
