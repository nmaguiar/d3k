#!/usr/bin/env bash
# Run privileged cases only on an explicitly designated disposable runner.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
image=${1:?image under test}; out=${2:?evidence directory}
mkdir -p "$out"; out=$(cd "$out" && pwd)
results=$out/results.tsv
printf 'test\tstatus\tdetail\n' > "$results"
record() { printf '%s\t%s\t%s\n' "$1" "$2" "$3" | tee -a "$results"; }
if ! docker info >/dev/null 2>&1; then
  record prerequisites 'NOT TESTED' 'Docker daemon unavailable'; exit 77
fi
name=d3k-test-$(date +%s)-$$
cleanup() {
  docker logs "$name" > "$out/container.log" 2>&1 || true
  docker cp "$name:/run/d3k/startup.log" "$out/startup.log" 2>/dev/null || true
  docker rm -f "$name" >/dev/null 2>&1 || true
}
trap cleanup EXIT
docker info --format 'os={{.OperatingSystem}} arch={{.Architecture}} kernel={{.KernelVersion}} engine={{.ServerVersion}} cgroups={{.CgroupVersion}} driver={{.CgroupDriver}} storage={{.Driver}} fs={{json .DriverStatus}}' > "$out/platform.txt"
docker image inspect "$image" --format 'id={{.Id}} digests={{json .RepoDigests}} arch={{.Architecture}} size={{.Size}}' > "$out/image.txt"
testcase() {
  local test=$1; shift
  if "$@" > "$out/$test.log" 2>&1; then record "$test" PASS 'see log'
  else record "$test" FAIL 'see log'; return 1; fi
}
testcase disabled docker run --rm --network none -e NODOCKER=true -e NOSSH=true "$image" status.js check=true json=true timeout=5
set +e
docker run --rm --network none -e NODOCKER=true -e NOSSH=true "$image" /bin/bash -c 'printf "<%s>\n" "$@"; cat; echo err >&2; exit 37' ignored 'a b' '' '*literal' < /dev/null > "$out/argv.stdout" 2> "$out/argv.stderr"
code=$?
set -e
[ "$code" = 37 ] && [ "$(cat "$out/argv.stderr")" = err ] || { record argv FAIL 'exit or stderr'; exit 1; }
printf '<a b>\n<>\n<*literal>\n' > "$out/argv.expected"
cmp "$out/argv.expected" "$out/argv.stdout"
record argv PASS 'boundaries, empty args, literal glob, exit status, stderr'
testcase tools docker run --rm --network none -e NODOCKER=true -e NOSSH=true "$image" /bin/bash -c 'set -e; id; test "$(id -u)" = 1001; test ! -w /etc/passwd; test -L /usr/local/bin/k3d; oaf -c "print(getVersion())"; oafp data="{\"test\":1}" out=json; printf "todo: [fixture]\njobs:\n- name: fixture\n  exec: print(123456789)\n" > /tmp/fixture.yaml; ojob /tmp/fixture.yaml | grep 123456789; opack list; docker --version; docker-compose version; docker-compose --version | grep "Docker Compose version"; docker buildx version; kubectl version --client; helm version; skopeo --version; test -s /home/user/.openaf_completion_bash.sh; test -x /opt/oaf/ojobs/vscTunnel.yaml; usage-help > /tmp/usage.txt; grep -q "d3k usage" /tmp/usage.txt; bash -ic "type help oafptab; complete -p oaf ojob docker kubectl helm skopeo k3d"'
testcase session bash "$root/tests/session.sh" "$image" "$out/session"
testcase negative-prerequisites bash "$root/tests/negative.sh" "$image" "$out/negative"
if [ "${D3K_TEST_PRIVILEGED:-0}" != 1 ]; then
  record integration 'NOT TESTED' 'requires D3K_TEST_PRIVILEGED=1 on a disposable runner'
  exit 77
fi
testcase docker-only-flags bash "$root/tests/docker-only.sh" "$image" "$out/docker-only"
# Namespace and publications belong only to this disposable test container.
docker run -d --name "$name" --label io.d3k.test=true --privileged --cgroupns=host -e NOSSH=true -e D3K_STARTUP_TIMEOUT=300 -p 127.0.0.1::1080 "$image" > "$out/container-id.txt"
inside() { docker exec "$name" "$@"; }
testcase readiness inside status.js check=true json=true timeout=300
docker cp "$root/tests/." "$name:/tmp/d3k-tests"
testcase inventory inside bash -c 'cat /etc/os-release; cat /usr/share/d3k/packages.tsv; cat /usr/share/d3k/opacks.txt; cat /usr/share/d3k/java-version.txt; docker info; docker images --digests'
testcase docker-workflows inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
fixture=$(lock_get TEST_WEB_IMAGE)
timeout 120 docker pull "$fixture"
mkdir -p /tmp/d3k-test/work
printf "%s\n" "$fixture" > /tmp/d3k-test/work/input
docker run --name test-web -d "$fixture"
docker exec test-web nginx -t
docker logs test-web
docker run --rm -v /tmp/d3k-test/work:/work "$fixture" cat /work/input
docker run --rm -u 1001:1001 -v /tmp/d3k-test/work:/work "$fixture" sh -c "touch /work/owned"
[ "$(stat -c %u /tmp/d3k-test/work/owned)" = 1001 ]
docker volume create test-data
docker run --rm -v test-data:/data "$fixture" sh -c "echo persisted > /data/value"
docker run --rm -v test-data:/data "$fixture" grep persisted /data/value
printf "FROM %s\nRUN printf built > /marker\n" "$fixture" > /tmp/d3k-test/Dockerfile
timeout 120 docker build -t d3k-fixture:built /tmp/d3k-test
timeout 120 docker buildx build --load -t d3k-fixture:buildx /tmp/d3k-test
docker run --rm d3k-fixture:built cat /marker
docker run --rm d3k-fixture:buildx cat /marker
docker save d3k-fixture:built -o /tmp/d3k-test/image.tar
docker load -i /tmp/d3k-test/image.tar
docker export test-web -o /tmp/d3k-test/rootfs.tar
docker import /tmp/d3k-test/rootfs.tar d3k-fixture:imported
docker tag "$fixture" localhost:5000/test/web:fixture
docker push localhost:5000/test/web:fixture
docker pull localhost:5000/test/web:fixture
skopeo inspect docker://localhost:5000/test/web:fixture --tls-verify=false
printf "services:\n  web:\n    image: %s\n    volumes:\n    - ./work:/work\n" "$fixture" > /tmp/d3k-test/compose.yaml
docker compose -p d3ktest -f /tmp/d3k-test/compose.yaml up -d
docker-compose -p d3ktest -f /tmp/d3k-test/compose.yaml exec -T web cat /work/input
docker compose -p d3ktest -f /tmp/d3k-test/compose.yaml down
docker rm -f test-web
'
testcase kubernetes-workflows inside bash -c '
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
kubectl create deployment my-first --image="$(lock_get TEST_WEB_IMAGE)"
kubectl rollout status deployment/my-first --timeout=120s
kubectl expose deployment my-first --port=80
curl --fail --max-time 15 --noproxy "" --proxy socks5h://localhost:1080 http://my-first.default/
kubectl create deployment registry-test --image=k3d-registry:5000/test/web:fixture
kubectl rollout status deployment/registry-test --timeout=120s
mkdir -p /tmp/d3k-chart/templates
printf "apiVersion: v2\nname: fixture\nversion: 0.1.0\n" > /tmp/d3k-chart/Chart.yaml
printf "apiVersion: v1\nkind: ConfigMap\nmetadata:\n  name: helm-fixture\ndata:\n  value: tested\n" > /tmp/d3k-chart/templates/config.yaml
helm install fixture /tmp/d3k-chart --wait --timeout 60s
kubectl get configmap helm-fixture -o yaml
helm uninstall fixture
sed "s|D3K_TEST_WEB_IMAGE|$(lock_get TEST_WEB_IMAGE)|g" /tmp/d3k-tests/fixtures/storage.yaml | kubectl apply -f -
kubectl rollout status deployment/storage-fixture --timeout=120s
kubectl exec deployment/storage-fixture -- grep retained /data/value
kubectl get nodes,pods,svc -A -o wide
'
port=$(docker port "$name" 1080/tcp | head -n 1)
testcase host-socks curl --fail --max-time 20 --noproxy '' --proxy "socks5h://$port" http://my-first.default/
for topology in three-servers server-agents; do
  if [ "$topology" = three-servers ]; then servers=3; agents=0; else servers=1; agents=2; fi
  testcase "$topology" inside bash /tmp/d3k-tests/topology.sh "$topology" "$servers" "$agents"
done
testcase docker-limits inside bash /tmp/d3k-tests/limits.sh
testcase restart docker restart -t 20 "$name"
testcase restart-readiness inside status.js check=true json=true timeout=300
testcase persistence inside kubectl --context k3d-k3s-default exec deployment/storage-fixture -- grep retained /data/value
record pod-limits 'NOT TESTED' 'requires bounded Kubernetes CPU and OOM fixtures before Phase 2 support'
record vsc-auth 'NOT TESTED' 'manual authentication required'
