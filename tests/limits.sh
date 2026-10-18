#!/usr/bin/env bash
# Bounded effective Docker controls. Record failures rather than relaxing limits.
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
fixture=$(lock_get TEST_WEB_IMAGE)
docker info --format 'cgroup={{.CgroupVersion}} driver={{.CgroupDriver}}'
set +e
timeout 30 docker run --name memory-fixture --memory 32m --memory-swap 32m "$fixture" sh -c 'exec dd if=/dev/zero of=/dev/shm/value bs=1M count=64'
code=$?
set -e
[ "$code" = 137 ]
[ "$(docker inspect memory-fixture --format '{{.State.OOMKilled}}')" = true ]
docker rm memory-fixture
timeout 20 docker run --rm --cpus 0.25 "$fixture" sh -c '
  test -f /sys/fs/cgroup/cpu.stat
  cat /sys/fs/cgroup/cpu.max
  awk '\''$1=="max" || $1/$2 < 0.24 || $1/$2 > 0.26 {exit 1}'\'' /sys/fs/cgroup/cpu.max
  timeout 3 sh -c "while :; do :; done" || { code=$?; [ "$code" = 143 ] || [ "$code" = 124 ]; }
  cat /sys/fs/cgroup/cpu.stat
  awk '\''$1=="nr_throttled" {if($2>0) found=1} END{exit !found}'\'' /sys/fs/cgroup/cpu.stat
'
timeout 20 docker run --rm -i --pids-limit 16 "$fixture" sh <<'PID_FIXTURE'
check_limit() {
  wait
  cat /sys/fs/cgroup/pids.events
  awk '$1=="max" {if($2>0) found=1} END{exit !found}' /sys/fs/cgroup/pids.events
  result=$?
  trap - EXIT
  exit "$result"
}
trap check_limit EXIT
test "$(cat /sys/fs/cgroup/pids.max)" = 16 || exit 1
i=0
while [ "$i" -lt 64 ]; do sleep 1 & i=$((i+1)); done
PID_FIXTURE
