#!/usr/bin/env bash
# Inside the dedicated d3k test instance. Never mutate nodes or host cgroups.
set -euo pipefail
source "${D3K_LIB_DIR:-/usr/local/lib/d3k}/lock.sh"
context=k3d-k3s-default
namespace=d3k-limits-$(date +%s)-$$-$RANDOM
created=false
budget=${D3K_TEST_POD_LIMIT_TIMEOUT:-120}
[[ "$budget" =~ ^[1-9][0-9]{0,2}$ ]] && [ "$budget" -le 180 ] || exit 2
deadline=$((SECONDS+budget))
remaining() { local n=$((deadline-SECONDS)); [ "$n" -gt 0 ] || return 124; echo "$n"; }
kube() {
  local n
  n=$(remaining) || return 124
  timeout --foreground -k 2 "$n" kubectl --context "$context" --request-timeout=5s "$@"
}
cleanup() {
  local code=$?
  if [ "$created" = true ]; then
    if [ "$code" != 0 ]; then
      # Only this invocation's namespace; preserve failure before deletion.
      timeout -k 1 5 kubectl --context "$context" --request-timeout=4s -n "$namespace" get pods -o wide || true
      for pod in cpu-limit memory-limit; do
        timeout -k 1 5 kubectl --context "$context" --request-timeout=4s -n "$namespace" logs "$pod" --timestamps || true
        timeout -k 1 5 kubectl --context "$context" --request-timeout=4s -n "$namespace" describe pod "$pod" || true
      done
    fi
    timeout -k 1 5 kubectl --context "$context" --request-timeout=4s delete namespace "$namespace" --wait=false || true
  fi
  exit "$code"
}
trap cleanup EXIT
wait_terminal() {
  local pod=$1 phase
  while :; do
    phase=$(kube -n "$namespace" get pod "$pod" -o 'jsonpath={.status.phase}') || return $?
    case "$phase" in Succeeded|Failed) return 0;; esac
    remaining >/dev/null || { echo "FAIL: pod $pod did not terminate within the shared deadline" >&2; return 124; }
    sleep 1
  done
}
kube get --raw=/readyz
kube create namespace "$namespace"
created=true
kube label namespace "$namespace" io.d3k.test=true
fixture=$(lock_get TEST_WEB_IMAGE)
[[ "$fixture" =~ ^[a-zA-Z0-9._:/-]+@sha256:[a-f0-9]{64}$ ]] || exit 2
sed "s|D3K_TEST_WEB_IMAGE|$fixture|g" "$(dirname "$0")/fixtures/pod-limits.yaml" | kube -n "$namespace" apply -f -
for pod in cpu-limit memory-limit; do
  wait_terminal "$pod"
  logs=$(kube -n "$namespace" logs "$pod")
  printf '%s\n' "$logs"
  terminated=$(kube -n "$namespace" get pod "$pod" -o 'jsonpath={.status.containerStatuses[0].state.terminated.reason}{" "}{.status.containerStatuses[0].state.terminated.exitCode}')
  if [[ "$terminated" = *' 77' ]]; then
    echo "NOT TESTED: $pod requires accessible cgroup v2 controls"; exit 77
  fi
  if [ "$pod" = cpu-limit ]; then
    [ "$terminated" = 'Completed 0' ]
    grep -qx 'PASS: effective CPU quota and increased throttling' <<< "$logs"
  else
    [ "$terminated" = 'OOMKilled 137' ]
    grep -qx 'memory.max=33554432' <<< "$logs"
  fi
done
echo 'PASS: Kubernetes CPU quota/throttling and memory OOM enforcement (bounded pods)'
