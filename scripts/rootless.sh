#!/usr/bin/env bash
# Fixed paths deliberately avoid cross-mode storage and endpoint auto-detection.
d3k_rootless_runtime=/run/user/1001
d3k_rootless_data=/home/user/.local/share/d3k/docker-rootless
d3k_owned_directory() {
  mkdir -p "$1"
  [ ! -L "$1" ] && [ -O "$1" ] && [ "$(realpath "$1")" = "$1" ] || {
    echo "d3k: refusing unowned or symlinked directory: $1" >&2; return 1;
  }
  chmod 700 "$1"
}
d3k_rootless_prepare() {
  local binary mapping temporary marker expected probe_timeout=10
  [ "$(id -u)" = 1001 ] || { echo 'd3k: rootless requires UID 1001' >&2; return 1; }
  for binary in rootlesskit dockerd-rootless.sh slirp4netns newuidmap newgidmap; do
    command -v "$binary" >/dev/null || return 1
  done
  for binary in newuidmap newgidmap; do
    [ "$(stat -c %u "$(command -v "$binary")")" = 0 ] && [ -u "$(command -v "$binary")" ] || {
      echo "d3k: $binary requires the packaged root-owned setuid mapping helper" >&2; return 1;
    }
  done
  for mapping in /etc/subuid /etc/subgid; do
    awk -F: '$1=="user" && $2==100000 && $3>=65536 {ok=1} END {exit !ok}' "$mapping" || return 1
  done
  d3k_owned_directory "$d3k_rootless_runtime"
  export XDG_RUNTIME_DIR=$d3k_rootless_runtime
  if declare -F remaining >/dev/null; then
    probe_timeout=$(remaining) || return 124
    [ "$probe_timeout" -le 10 ] || probe_timeout=10
  fi
  temporary=$(mktemp -d "$XDG_RUNTIME_DIR/probe.XXXXXXXX")
  if ! timeout -k 2 "$probe_timeout" rootlesskit --net=host --state-dir="$temporary/state" sh -c '
    cat /proc/self/uid_map; cat /proc/self/gid_map
    for mapping in /proc/self/uid_map /proc/self/gid_map; do
      awk "\$2 == 100000 && \$3 >= 65536 {found=1} END {exit !found}" "$mapping" || exit 1
    done
  ' > "$D3K_RUNTIME_DIR/rootless-mappings.txt" 2> "$D3K_RUNTIME_DIR/rootless-prerequisites.log"; then
    rm -rf "$temporary"
    echo 'd3k: rootless namespace/mapping probe failed; see rootless-prerequisites.log; no fallback' >&2
    return 1
  fi
  rm -rf "$temporary"
  d3k_owned_directory "$d3k_rootless_data"
  marker=$d3k_rootless_data/.d3k-store
  expected="rootless classic-vfs $(dockerd --version | awk '{print $3}')"
  if [ -f "$marker" ]; then
    [ "$(cat "$marker")" = "$expected" ] || { echo 'd3k: incompatible rootless store; export/import or explicitly recreate separately' >&2; return 1; }
  else
    [ -z "$(find "$d3k_rootless_data" -mindepth 1 -maxdepth 1 -print -quit)" ] || {
      echo 'd3k: refusing unmarked populated rootless store' >&2; return 1;
    }
    printf '%s\n' "$expected" > "$marker"
  fi
  # Bootstrap only the canonical socket link using compatibility-profile sudo.
  # The daemon itself is always launched as UID 1001. Never replace a real socket.
  if [ -L /var/run/docker.sock ]; then
    [ "$(readlink /var/run/docker.sock)" = "$XDG_RUNTIME_DIR/docker.sock" ] || return 1
  else
    [ ! -e /var/run/docker.sock ] || { echo 'd3k: refusing existing canonical socket' >&2; return 1; }
    sudo -n ln -s "$XDG_RUNTIME_DIR/docker.sock" /var/run/docker.sock
  fi
  export DOCKERD_ROOTLESS_ROOTLESSKIT_NET=slirp4netns
  export DOCKERD_ROOTLESS_ROOTLESSKIT_PORT_DRIVER=builtin
  export DOCKERD_ROOTLESS_ROOTLESSKIT_DISABLE_HOST_LOOPBACK=true
  # Never reuse RootlessKit locks/PIDs across container restarts. Only this
  # invocation's generated state directory is eligible for shutdown cleanup.
  export DOCKERD_ROOTLESS_ROOTLESSKIT_STATE_DIR
  DOCKERD_ROOTLESS_ROOTLESSKIT_STATE_DIR=$(mktemp -d "$XDG_RUNTIME_DIR/engine.XXXXXXXX")
  printf '%s\n' "$DOCKERD_ROOTLESS_ROOTLESSKIT_STATE_DIR" > "$D3K_RUNTIME_DIR/rootless-state-directory"
  echo 'd3k: experimental rootless, explicit classic vfs (no fallback), slirp4netns/builtin; compatibility sudo remains unrestricted'
}
d3k_rootless_identity() {
  local options pid
  options=$(timeout 5 docker info --format '{{json .SecurityOptions}}') || return 1
  [[ "$options" == *'"name=rootless"'* ]] || return 1
  [ -s "$D3K_RUNTIME_DIR/rootless.pid" ] || return 1
  pid=$(cat "$D3K_RUNTIME_DIR/rootless.pid")
  [[ "$pid" =~ ^[0-9]+$ ]] && [ "$(stat -c %u "/proc/$pid")" = 1001 ] &&
    [[ "$(readlink "/proc/$pid/exe")" == */rootlesskit ]] || return 1
  # Rootful dockerd ownership would contradict the selected mode.
  ! ps -eo uid=,comm= | awk '$1==0 && $2=="dockerd" {found=1} END {exit !found}'
}
d3k_rootless_cgroups() {
  local driver version
  driver=$(timeout 5 docker info --format '{{.CgroupDriver}}')
  version=$(timeout 5 docker info --format '{{.CgroupVersion}}')
  {
    printf 'cgroup_version=%s\ncgroup_driver=%s\n' "$version" "$driver"
    if [ -r /proc/self/cgroup ]; then cat /proc/self/cgroup; else echo 'process_cgroup=unavailable'; fi
    [ ! -r /sys/fs/cgroup/cgroup.controllers ] || cat /sys/fs/cgroup/cgroup.controllers
  } > "$D3K_RUNTIME_DIR/rootless-cgroups.txt"
  if [ "$version" != 2 ] || [ "$driver" != systemd ]; then
    if [ "${D3K_ROOTLESS_DIAGNOSTIC:-false}" = true ] && [ "${NOK8S:-false}" = true ]; then
      echo 'effective_resource_limits=UNSUPPORTED (explicit Docker-only diagnostic)' >> "$D3K_RUNTIME_DIR/rootless-cgroups.txt"
      echo 'd3k: diagnostic rootless Docker-only mode: proceeding without usable cgroup delegation; resource controls UNSUPPORTED; Kubernetes disabled explicitly' >&2
      return 0
    fi
    echo "d3k: rootless cgroup feasibility failed: version=$version driver=$driver; resource controls require usable v2/systemd delegation. Stopping experimental daemon; no host changes, no fallback, no automatic NOK8S." >&2
    return 1
  fi
  echo 'effective_resource_limits=NOT TESTED (requires bounded integration workloads)' >> "$D3K_RUNTIME_DIR/rootless-cgroups.txt"
}
d3k_rootless_stop() {
  local pid executable i directory
  [ -s "$D3K_RUNTIME_DIR/rootless.pid" ] || return 0
  pid=$(cat "$D3K_RUNTIME_DIR/rootless.pid")
  [[ "$pid" =~ ^[0-9]+$ ]] || return 1
  if [ -d "/proc/$pid" ]; then
    [ "$(stat -c %u "/proc/$pid")" = 1001 ] || return 1
    executable=$(readlink "/proc/$pid/exe") || return 1
    [[ "$executable" == */rootlesskit ]] || return 1
    kill -TERM "$pid"
    for ((i=0; i<50; i++)); do
      kill -0 "$pid" 2>/dev/null || break
      if [[ "$(ps -o stat= -p "$pid")" == Z* ]]; then wait "$pid" 2>/dev/null || true; break; fi
      sleep 0.1
    done
    kill -0 "$pid" 2>/dev/null && { echo 'd3k: rootless daemon did not stop; retaining runtime for investigation' >&2; return 1; }
  fi
  rm -f "$D3K_RUNTIME_DIR/rootless.pid"
  if [ -r "$D3K_RUNTIME_DIR/rootless-state-directory" ]; then
    directory=$(cat "$D3K_RUNTIME_DIR/rootless-state-directory")
    if [[ "$directory" == "$d3k_rootless_runtime"/engine.* ]] &&
      [ -d "$directory" ] && [ -O "$directory" ] && [ ! -L "$directory" ] &&
      [ "$(realpath "$directory")" = "$directory" ]; then rm -rf "$directory"; fi
    rm -f "$D3K_RUNTIME_DIR/rootless-state-directory"
  fi
}
