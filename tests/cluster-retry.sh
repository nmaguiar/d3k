#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
source "$root/scripts/cluster.sh"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
remaining() { local n=$((deadline-SECONDS)); [ "$n" -gt 0 ] || return 1; echo "$n"; }
run() {
  remaining >/dev/null || return 124
  printf '%s\n' "$*" >> "$tmp/commands"
  case "$*" in
    'k3d cluster start k3s-default --wait --timeout '*)
      starts=$((starts+1))
      case "$fixture" in
        recover) [ "$starts" -ge 2 ] || return 17;;
        permanent|stop-failure) return 17;;
        deadline) deadline=$SECONDS; return 17;;
      esac;;
    'k3d cluster stop k3s-default') [ "$fixture" != stop-failure ] || return 23;;
    'sleep 2') deadline=$((deadline-2));;
    *) return 99;;
  esac
}
for fixture in success recover permanent stop-failure deadline; do
  starts=0; deadline=$((SECONDS+30)); : > "$tmp/commands"
  code=0
  d3k_start_retained_cluster > "$tmp/$fixture.log" 2>&1 || code=$?
  case "$fixture" in
    success) test "$code" = 0; test "$starts" = 1; test "$(wc -l < "$tmp/commands" | tr -d ' ')" = 1;;
    recover)
      test "$code" = 0; test "$starts" = 2
      sed -n '2p' "$tmp/commands" | grep -qx 'k3d cluster stop k3s-default'
      sed -n '3p' "$tmp/commands" | grep -qx 'sleep 2'
      first=$(head -n 1 "$tmp/commands" | awk '{print $NF}' | tr -d s)
      last=$(tail -n 1 "$tmp/commands" | awk '{print $NF}' | tr -d s)
      test "$last" -lt "$first";;
    permanent) test "$code" = 17; test "$starts" = 3; test "$(grep -c 'cluster stop' "$tmp/commands")" = 2;;
    stop-failure) test "$code" = 23; test "$starts" = 1;;
    deadline) test "$code" = 124; test "$starts" = 1; test "$(wc -l < "$tmp/commands" | tr -d ' ')" = 1;;
  esac
done
echo 'PASS: retained-cluster success, scoped stop/retry, attempt cap, shrinking deadline and fatal cleanup error (mock commands)'
