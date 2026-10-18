#!/usr/bin/env bash
# Uses the caller's run/remaining helpers and its single startup deadline.
d3k_start_retained_cluster() {
  local attempt code budget
  for attempt in 1 2 3; do
    budget=$(remaining) || return 124
    echo "d3k: retained cluster start attempt $attempt/3 ($budget seconds remaining)"
    if run k3d cluster start k3s-default --wait --timeout "${budget}s"; then
      return 0
    else
      code=$?
    fi
    echo "d3k: retained cluster start attempt $attempt failed (exit $code)" >&2
    [ "$attempt" -lt 3 ] || return "$code"
    remaining >/dev/null || return 124
    # k3d skips post-start preparation for already-running nodes. Stop only
    # this retained cluster so a retry also repeats that preparation. Keep data.
    run k3d cluster stop k3s-default || return $?
    run sleep 2 || return $?
  done
}
