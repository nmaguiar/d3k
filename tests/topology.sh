#!/usr/bin/env bash
# Executed inside the dedicated d3k test instance, never on the outer daemon.
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
cluster=${1:?}; servers=${2:?}; agents=${3:?}
context=k3d-$cluster
fixture=$(lock_get TEST_WEB_IMAGE)
timeout 240 k3d cluster create "$cluster" -s "$servers" -a "$agents" --image "$(lock_get K3S_IMAGE)" --timeout 220s --k3s-arg '--snapshotter=native@server:*' --k3s-arg '--snapshotter=native@agent:*' -p '127.0.0.1:8080:8080@loadbalancer'
kube() { kubectl --context "$context" --request-timeout=10s "$@"; }
kube wait nodes --all --for=condition=Ready --timeout=60s
[ "$(kube get nodes --no-headers | wc -l)" -eq "$((servers + agents))" ]
sed "s|D3K_TEST_WEB_IMAGE|$fixture|g" /tmp/d3k-tests/fixtures/node-echo.yaml | kube apply -f -
kube rollout status daemonset/node-echo --timeout=120s
pods=$(kube get pods -l app=node-echo -o 'jsonpath={range .items[*]}{.metadata.name}{" "}{.status.podIP}{"\n"}{end}')
# From every node, resolve service DNS and reach each other node's pod directly.
while read -r source _source_ip; do
  kube exec "$source" -- wget -qO- -T 10 http://node-echo.default.svc.cluster.local:8080/ | grep node-echo
  while read -r target target_ip; do
    actual=$(kube exec "$source" -- wget -qO- -T 10 "http://$target_ip/")
    [ "$actual" = "$target" ]
  done <<< "$pods"
done <<< "$pods"
answers=$(for ((i=0; i<30; i++)); do curl --fail --silent --max-time 5 http://127.0.0.1:8080/; done)
[ "$(printf '%s\n' "$answers" | sort -u | wc -l)" -ge 2 ]
# The default cluster must remain independently usable throughout.
kubectl --context k3d-k3s-default --request-timeout=10s get nodes
k3d cluster stop "$cluster"
timeout 120 k3d cluster start "$cluster" --timeout 100s
kube wait nodes --all --for=condition=Ready --timeout=60s
kube rollout status daemonset/node-echo --timeout=60s
k3d cluster delete "$cluster"
