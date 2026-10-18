#!/usr/bin/env bash
# Persistent Docker data is unchanged. Only transient execution state is fresh.
d3k_engine_runtime() {
  local processes pid uid name executable
  processes=$(ps -eo pid=,uid=,comm=) || return 1
  while read -r pid uid name; do
    case "$uid" in 0|1001) ;; *) continue;; esac
    case "$name" in dockerd|containerd)
      executable=$(run sudo -n readlink "/proc/$pid/exe") || {
        echo "d3k: cannot verify existing engine process $pid; refusing startup" >&2; return 1;
      }
      case "$executable" in */dockerd|*/containerd|*/dockerd\ \(deleted\)|*/containerd\ \(deleted\))
        echo "d3k: existing engine process $pid ($name); refusing a second managed engine" >&2; return 1;;
      esac;;
    esac
  done <<< "$processes"
  # /run is root-owned; sudo creates a private directory, without following or
  # deleting retained engine state. Never reuse a PID solely because it exists.
  engine_runtime=$(run sudo -n mktemp -d /run/d3k-rootful.XXXXXXXX) || return 1
  [[ "$engine_runtime" =~ ^/run/d3k-rootful\.[a-zA-Z0-9]{8}$ ]] || return 1
  [ "$(run sudo -n stat -c '%u:%a' "$engine_runtime")" = 0:700 ] || return 1
  printf '%s\n' "$engine_runtime" > "$D3K_RUNTIME_DIR/engine-runtime"
  echo "d3k: rootful execution state $engine_runtime; persistent engine data unchanged"
}

d3k_child_alive() {
  local status
  [[ "$1" =~ ^[1-9][0-9]*$ ]] || return 1
  status=$(ps -o stat= -p "$1" 2>/dev/null) || return 1
  [ -n "${status//[[:space:]]/}" ] && [[ ! "$status" =~ ^[[:space:]]*Z ]]
}
