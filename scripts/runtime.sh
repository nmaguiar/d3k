#!/usr/bin/env bash
set -Eeuo pipefail
lib=${D3K_LIB_DIR:-/usr/local/lib/d3k}
source "$lib/environment.sh"
source "$lib/lock.sh"
source "$lib/rootless.sh"
d3k_resolve
state() { printf '%s\n' "$2" > "$D3K_RUNTIME_DIR/$1.state.tmp"; mv "$D3K_RUNTIME_DIR/$1.state.tmp" "$D3K_RUNTIME_DIR/$1.state"; }
remaining() { local n=$((deadline - SECONDS)); [ "$n" -gt 0 ] || return 1; printf '%s' "$n"; }
run() { local n; n=$(remaining) || return 124; timeout --foreground -k 2 "$n" "$@"; }
kube_endpoint() {
  local port cluster endpoint
  # Use the effective Docker publication, including retained clusters created
  # with the old literal :0 setting. Never connect to a wildcard address/port 0.
  port=$(timeout 5 docker inspect --format '{{range (index .NetworkSettings.Ports "6443/tcp")}}{{if or (eq .HostIp "0.0.0.0") (eq .HostIp "127.0.0.1")}}{{println .HostPort}}{{end}}{{end}}' k3d-k3s-default-serverlb)
  [[ "$port" =~ ^[1-9][0-9]{0,4}$ ]] && [ "$port" -le 65535 ] || {
    echo 'd3k: missing, ambiguous or invalid Kubernetes API publication; inspect k3d-k3s-default-serverlb' >&2; return 1;
  }
  cluster=$(timeout 5 kubectl --context k3d-k3s-default config view --minify -o 'jsonpath={.contexts[0].context.cluster}')
  [ "$cluster" = k3d-k3s-default ] || { echo 'd3k: unexpected Kubernetes cluster reference' >&2; return 1; }
  # Merge only the server field. Keep certificate authorities and TLS verification.
  timeout 5 kubectl config set-cluster "$cluster" --server="https://127.0.0.1:$port"
  endpoint=$(timeout 5 kubectl --context k3d-k3s-default config view --minify -o 'jsonpath={.clusters[0].cluster.server}')
  [ "$endpoint" = "https://127.0.0.1:$port" ] || return 1
  echo "d3k: Kubernetes API endpoint $endpoint"
}
kube_check() {
  local label=$1 code=0
  shift
  # Retain the last individual probe result instead of discarding its error.
  # No kubeconfig credentials or Secret objects are queried here.
  { date -u '+%Y-%m-%dT%H:%M:%SZ'; timeout 5 kubectl --context k3d-k3s-default --request-timeout=4s "$@"; } > "$D3K_RUNTIME_DIR/kube-$label.log.tmp" 2>&1 || code=$?
  mv "$D3K_RUNTIME_DIR/kube-$label.log.tmp" "$D3K_RUNTIME_DIR/kube-$label.log"
  return "$code"
}
probe() {
  case "$1" in
    Docker)
      if [ "$D3K_DOCKER_MODE" = rootless ]; then
        [ "$(cat "$D3K_RUNTIME_DIR/rootless-feasibility.state" 2>/dev/null)" = ready ] && d3k_rootless_identity
      else timeout 5 docker info >/dev/null 2>&1; fi ;;
    Kubernetes)
      kube_check api get --raw=/readyz &&
      kube_check nodes wait node --all --for=condition=Ready --timeout=1s &&
      kube_check coredns -n kube-system rollout status deployment/coredns --timeout=1s
      ;;
    SOCKS)
      if [ "$NOK8S" = true ]; then
        timeout 5 bash -c 'exec 3<>/dev/tcp/127.0.0.1/1080; printf "\\005\\001\\000" >&3; reply=$(dd bs=2 count=1 <&3 2>/dev/null | od -An -tx1); [[ "$reply" == *"05 00"* ]]' >/dev/null 2>&1
      else
        timeout 5 kubectl --context k3d-k3s-default --request-timeout=4s -n kube-system rollout status deployment/socks-server --timeout=1s >/dev/null 2>&1 &&
        # The API requires auth: 401/403 still prove SOCKS remote DNS and routing.
        timeout 5 curl --silent --show-error --max-time 4 --noproxy '' --cacert "$D3K_RUNTIME_DIR/cluster-ca.crt" --proxy socks5h://127.0.0.1:1080 https://kubernetes.default.svc/ >/dev/null 2>&1
      fi ;;
    SSH) [ -s "$D3K_RUNTIME_DIR/ssh.pid" ] && sudo -n kill -0 "$(sudo -n cat "$D3K_RUNTIME_DIR/ssh.pid")" 2>/dev/null &&
      timeout 3 bash -c 'exec 3<>/dev/tcp/127.0.0.1/22; read -r -t 2 banner <&3; [[ "$banner" == SSH-2.0-* ]]' >/dev/null 2>&1 ;;
    *) return 2 ;;
  esac
}
wait_for() { until run "$0" probe "$1"; do remaining >/dev/null || return 124; sleep 1; done; }
check_bindings() {
  [ "$NOPUBLIC" = true ] || return 0
  local resource addresses address
  for resource in "$@"; do
    addresses=$(run docker inspect --format '{{range .HostConfig.PortBindings}}{{range .}}{{if .HostIp}}{{println .HostIp}}{{else}}{{println "wildcard"}}{{end}}{{end}}{{end}}' "$resource")
    while IFS= read -r address; do
      case "$address" in ''|127.0.0.1|::1) ;;
        *) echo "d3k: retained $resource has non-loopback bindings; recreate it explicitly for NOPUBLIC=true" >&2; return 1;;
      esac
    done <<< "$addresses"
  done
}
snapshot() {
  local component enabled value
  for component in SSH Docker Kubernetes SOCKS; do
    enabled=true
    case "$component" in SSH) [ "$NOSSH" = false ] || enabled=false;; Docker|SOCKS) [ "$NODOCKER" = false ] || enabled=false;; Kubernetes) [ "$NODOCKER" = false ] && [ "$NOK8S" = false ] || enabled=false;; esac
    if [ "$enabled" = false ]; then printf '%s\tdisabled\tdisabled by configuration\n' "$component"; continue; fi
    if probe "$component"; then
      printf '%s\tready\tprobe succeeded\n' "$component"
    else
      value=starting; [ ! -f "$D3K_RUNTIME_DIR/$component.state" ] || value=$(cat "$D3K_RUNTIME_DIR/$component.state")
      case "$value" in ready) value=degraded;; failed) ;; *) value=starting;; esac
      printf '%s\t%s\tsee %s/startup.log\n' "$component" "$value" "$D3K_RUNTIME_DIR"
    fi
  done
}
stop() {
  if [ "$D3K_DOCKER_MODE" = rootless ]; then d3k_rootless_stop || true; fi
  # Verify the process executable before using invocation-owned PID files.
  local name pid exe
  for name in docker ssh; do
    [ "$name" != docker ] || [ "$D3K_DOCKER_MODE" != rootless ] || continue
    [ -s "$D3K_RUNTIME_DIR/$name.pid" ] || continue
    pid=$(sudo -n cat "$D3K_RUNTIME_DIR/$name.pid" 2>/dev/null) || continue
    case "$pid" in ''|*[!0-9]*) continue;; esac
    exe=$(sudo -n readlink "/proc/$pid/exe" 2>/dev/null) || continue
    case "$name:$exe" in docker:*/dockerd|ssh:*/sshd) sudo -n kill -TERM "$pid" 2>/dev/null || true;; esac
  done
  for ((i=0; i<10; i++)); do
    [ ! -s "$D3K_RUNTIME_DIR/docker.pid" ] && break
    sleep 1
  done
}
start() {
  deadline=$((SECONDS + D3K_STARTUP_TIMEOUT))
  active=SSH
  startup_error() {
    local code=$?
    state "$active" failed
    echo "d3k: $active startup failed (exit $code); inspect $D3K_RUNTIME_DIR/startup.log" >&2
    if [ "$D3K_DOCKER_MODE" = rootless ]; then d3k_rootless_stop || true; fi
    exit "$code"
  }
  trap startup_error ERR
  if [ "$NOSSH" = false ]; then
    if [ "${SSH_PASS+x}" ]; then
      [ -n "$SSH_PASS" ] && [[ "$SSH_PASS" != *$'\n'* ]] && [[ "$SSH_PASS" != *$'\r'* ]] || { echo 'Invalid SSH_PASS' >&2; return 2; }
      printf 'user:%s\n' "$SSH_PASS" | run sudo -n chpasswd
      password=yes
    else password=no; fi
    unset SSH_PASS
    # Desktop bind mounts can retain a host UID different from 1001. Copy only
    # the supplied public keys into an owned file; never chown the user's mount.
    : > "$D3K_RUNTIME_DIR/authorized_keys"
    if sudo -n test -f /home/user/.ssh/authorized_keys; then
      run sudo -n cat /home/user/.ssh/authorized_keys > "$D3K_RUNTIME_DIR/authorized_keys"
    fi
    mkdir -p "$D3K_RUNTIME_DIR/ssh"
    [ -s "$D3K_RUNTIME_DIR/ssh/ssh_host_ed25519_key" ] || run ssh-keygen -q -t ed25519 -N '' -f "$D3K_RUNTIME_DIR/ssh/ssh_host_ed25519_key"
    sudo -n mkdir -p /run/sshd
    sudo -n /usr/sbin/sshd -D -e -h "$D3K_RUNTIME_DIR/ssh/ssh_host_ed25519_key" -o "PidFile=$D3K_RUNTIME_DIR/ssh.pid" -o PermitRootLogin=no -o "PasswordAuthentication=$password" -o 'AuthorizedKeysFile=/run/d3k/authorized_keys /home/user/.ssh/authorized_keys' -o KbdInteractiveAuthentication=no -o AllowUsers=user -o AllowTcpForwarding=yes &
    wait_for SSH
    state SSH ready
  fi
  [ "$NODOCKER" = false ] || return 0
  active=Docker
  if timeout 5 docker info >/dev/null 2>&1; then echo 'd3k: refusing a pre-existing daemon during managed startup' >&2; return 1; fi
  if [ "$D3K_DOCKER_MODE" = rootless ]; then
    d3k_rootless_prepare
    # Do not inherit rootful daemon configuration or user-selected stores.
    printf '{}\n' > "$XDG_RUNTIME_DIR/daemon.json"
    # Fixed data path is assigned by the sourced rootless.sh helper.
    # shellcheck disable=SC2154
    env -u _DOCKERD_ROOTLESS_CHILD -u _DOCKERD_ROOTLESS_SELINUX -u DOCKERD_ROOTLESS_ROOTLESSKIT_FLAGS \
      DOCKERD=/usr/bin/dockerd dockerd-rootless.sh --config-file="$XDG_RUNTIME_DIR/daemon.json" --host="unix://$XDG_RUNTIME_DIR/docker.sock" \
      --data-root="$d3k_rootless_data" --exec-root="$XDG_RUNTIME_DIR/docker-exec" \
      --pidfile="$XDG_RUNTIME_DIR/docker.pid" --storage-driver=vfs --feature=containerd-snapshotter=false &
    printf '%s\n' "$!" > "$D3K_RUNTIME_DIR/rootless.pid"
    until run "$0" rootless-identity; do
      remaining >/dev/null || return 124
      pid=$(cat "$D3K_RUNTIME_DIR/rootless.pid")
      kill -0 "$pid" 2>/dev/null && [[ "$(ps -o stat= -p "$pid")" != Z* ]] || return 1
      sleep 1
    done
    run "$0" rootless-cgroups
    state rootless-feasibility ready
  else
    if [ -L /var/run/docker.sock ]; then
      [ "$(readlink /var/run/docker.sock)" = /run/user/1001/docker.sock ] || return 1
      sudo -n rm /var/run/docker.sock
    fi
    sudo -n dockerd --config-file=/etc/docker/daemon.json --pidfile="$D3K_RUNTIME_DIR/docker.pid" &
    wait_for Docker
  fi
  state Docker ready
  if [ "$NOK8S" = false ]; then
    active=Kubernetes
    image=${D3K_K3S_IMAGE:-$(lock_get K3S_IMAGE)}
    [[ "$image" =~ ^[a-zA-Z0-9][a-zA-Z0-9._:/@+-]*$ ]] || { echo 'Invalid D3K_K3S_IMAGE' >&2; return 2; }
    echo "d3k: K3s image $image"
    run docker pull "$image"
    run docker image inspect "$image" --format '{{json .RepoDigests}}'
    if run docker inspect k3d-k3s-default-server-0 >/dev/null 2>&1; then
      check_bindings k3d-k3s-default-serverlb k3d-registry
      run k3d cluster start k3s-default --wait --timeout "$(remaining)s"
    else
      bind=0.0.0.0; [ "$NOPUBLIC" = false ] || bind=127.0.0.1
      # k3d 5.9.0 has fixed default helper tags, not CLI override flags.
      # Resolve these tags from locked digests before k3d's local-image lookup.
      for key in K3D_PROXY_IMAGE K3D_TOOLS_IMAGE; do
        helper=$(lock_get "$key")
        run docker pull "$helper"
        run docker tag "$helper" "${helper%@*}"
      done
      if ! run docker inspect k3d-registry >/dev/null 2>&1; then
        run k3d registry create registry --image "$(lock_get REGISTRY_IMAGE)" --port "$bind:5000"
      fi
      check_bindings k3d-registry
      run k3d cluster create k3s-default --image "$image" --api-port "$bind:random" --timeout "$(remaining)s" --k3s-arg '--snapshotter=native@server:*' --k3s-arg '--snapshotter=native@agent:*' --k3s-arg '--tls-san=127.0.0.1@server:*' --registry-use k3d-registry:5000 -p "$bind:1080:1080@loadbalancer"
    fi
    run "$0" kube-endpoint
    wait_for Kubernetes
    run kubectl --context k3d-k3s-default config view --raw --minify --flatten -o 'jsonpath={.clusters[0].cluster.certificate-authority-data}' | base64 -d > "$D3K_RUNTIME_DIR/cluster-ca.crt"
    state Kubernetes ready
    active=SOCKS
    run kubectl --context k3d-k3s-default -n kube-system apply -f "$lib/socks.yaml"
  else
    active=SOCKS
    bind=0.0.0.0; [ "$NOPUBLIC" = false ] || bind=127.0.0.1
    if run docker inspect d3k-socks >/dev/null 2>&1; then
      check_bindings d3k-socks
      run docker start d3k-socks
    else
      run docker run -d --name d3k-socks --label io.d3k.managed=true -p "$bind:1080:1080" "$(lock_get SOCKS_IMAGE)"
    fi
  fi
  wait_for SOCKS
  state SOCKS ready
}
case "${1:-}" in
  start)
    # Stream daemon diagnostics directly; oJob's shell adapter may buffer child
    # output until its long-lived monitoring job exits.
    exec >> "$D3K_RUNTIME_DIR/startup.log" 2>&1
    trap 'stop; exit 0' TERM INT HUP
    start
    # Keep the helper alive to forward shutdown to root-owned daemons and
    # observe unexpected process exits. No service manager is assumed.
    trap - ERR
    if [ "$NOSSH" = false ] || [ "$NODOCKER" = false ]; then
      set +e
      wait -n
      code=$?
      if [ "$NODOCKER" = false ] && ! probe Docker; then state Docker failed; fi
      if [ "$NOSSH" = false ] && ! probe SSH; then state SSH failed; fi
      if [ "$D3K_DOCKER_MODE" = rootless ]; then d3k_rootless_stop || true; fi
      echo "d3k: a managed daemon exited unexpectedly (exit $code)" >&2
      exit 1
    fi ;;
  probe) probe "${2:?component required}" ;;
  rootless-identity) d3k_rootless_identity ;;
  rootless-cgroups) d3k_rootless_cgroups ;;
  kube-endpoint) kube_endpoint ;;
  mode) printf '%s\n' "$D3K_DOCKER_MODE" ;;
  snapshot) snapshot ;;
  stop) stop ;;
  *) echo 'usage: runtime.sh start|snapshot|probe COMPONENT|stop' >&2; exit 2 ;;
esac
