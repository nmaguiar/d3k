#!/usr/bin/env bash
# Shared by initial and restarted topology checks; no daemon/host configuration.
topology_wait_dns() {
  local context=${1:?} pods=${2-} budget=${3:-120}
  local deadline remaining attempt pod ip output
  [[ "$budget" =~ ^[1-9][0-9]{0,2}$ ]] && [ "$budget" -le 300 ] || return 2
  [ -n "$pods" ] || { echo 'DNS readiness: no fixture pods'; return 1; }
  deadline=$((SECONDS + budget))
  echo "Waiting for CoreDNS and per-pod DNS/Service connectivity in $context (${budget}s total)"
  if ! timeout --foreground -k 1 "$budget" kubectl --context "$context" --request-timeout=4s -n kube-system rollout status deployment/coredns --timeout="${budget}s"; then
    echo "CoreDNS readiness failed in $context"; return 1
  fi
  while read -r pod ip; do
    [ -n "$pod" ] && [ -n "$ip" ] || { echo 'DNS readiness: incomplete fixture pod inventory'; return 1; }
    while :; do
      remaining=$((deadline - SECONDS))
      [ "$remaining" -gt 0 ] || { echo "DNS/Service readiness timed out: context=$context pod=$pod"; return 1; }
      attempt=$remaining; [ "$attempt" -le 5 ] || attempt=5
      if output=$(timeout --foreground -k 1 "$attempt" kubectl --context "$context" --request-timeout=4s exec "$pod" -- wget -qO- -T 4 http://node-echo.default.svc.cluster.local:8080/ 2>&1) &&
        awk -v response="$output" '$1==response {found=1} END {exit !found}' <<< "$pods"; then
        echo "DNS/Service ready: context=$context pod=$pod response=$output"
        break
      fi
      printf 'DNS/Service not ready: context=%s pod=%s: %s\n' "$context" "$pod" "$output"
      sleep 1
    done
  done <<< "$pods"
}

topology_diagnostics() {
  local context=${1:?}
  check() {
    printf '\n--- %s ---\n' "$*"
    timeout -k 1 5 "$@"
    printf 'diagnostic_exit=%s\n' "$?"
  }
  check kubectl --context "$context" --request-timeout=4s get --raw=/readyz?verbose
  check kubectl --context "$context" --request-timeout=4s get nodes -o wide
  check kubectl --context "$context" --request-timeout=4s get pods -A -o wide
  check kubectl --context "$context" --request-timeout=4s -n kube-system get service kube-dns -o wide
  check kubectl --context "$context" --request-timeout=4s -n kube-system get endpointslices -l k8s.io/service-name=kube-dns -o wide
  check kubectl --context "$context" --request-timeout=4s -n kube-system describe deployment coredns
  check kubectl --context "$context" --request-timeout=4s -n kube-system logs deployment/coredns --tail=100
  check kubectl --context "$context" --request-timeout=4s get events -A --sort-by=.lastTimestamp
}

if [[ "${BASH_SOURCE[0]}" = "$0" ]]; then
  set -uo pipefail
  case "${1:-}" in diagnostics) topology_diagnostics "${2:?context}";; *) exit 2;; esac
fi
