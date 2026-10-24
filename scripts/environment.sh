#!/usr/bin/env bash
# Shared resolution for entrypoint, status and noninteractive sessions.
d3k_error() { printf 'd3k: %s\n' "$*" >&2; return 2; }
d3k_bool() {
  case "$(printf '%s' "${!1-}" | tr '[:upper:]' '[:lower:]')" in
    true|1|yes|on) printf -v "$1" '%s' true ;;
    ''|false|0|no|off) printf -v "$1" '%s' false ;;
    *) d3k_error "$1 must be a boolean"; return 2 ;;
  esac
  export "${1?}"
}
d3k_resolve() {
  local flag key value
  # SSH does not inherit container environment. Read only known, non-secret
  # resolved fields, without sourcing executable text or overriding caller env.
  if [ "${D3K_LOAD_ENV:-1}" = 1 ] && [ -r "${D3K_RUNTIME_DIR:-/run/d3k}/environment" ]; then
    while IFS='=' read -r key value; do
      case "$key" in NOSSH|NODOCKER|NOK8S|NOPUBLIC|D3K_ROOTLESS_DIAGNOSTIC|D3K_DOCKER_MODE|D3K_STARTUP_TIMEOUT|DOCKER_HOST)
        [ "${!key+x}" ] || export "$key=$value";;
      esac
    done < "${D3K_RUNTIME_DIR:-/run/d3k}/environment"
  fi
  for flag in NOSSH NODOCKER NOK8S NOPUBLIC D3K_ROOTLESS_DIAGNOSTIC; do d3k_bool "$flag" || return; done
  export D3K_DOCKER_MODE=${D3K_DOCKER_MODE:-rootful}
  case "$D3K_DOCKER_MODE" in
    rootful|rootless) ;;
    external) d3k_error "external is reserved for Phase 3 and not implemented"; return 2 ;;
    *) d3k_error "unknown D3K_DOCKER_MODE"; return 2 ;;
  esac
  if [ "$D3K_ROOTLESS_DIAGNOSTIC" = true ] && { [ "$D3K_DOCKER_MODE" != rootless ] || [ "$NOK8S" != true ]; }; then
    d3k_error 'D3K_ROOTLESS_DIAGNOSTIC requires rootless mode and explicit NOK8S=true'; return 2
  fi
  export D3K_STARTUP_TIMEOUT=${D3K_STARTUP_TIMEOUT:-300}
  case "$D3K_STARTUP_TIMEOUT" in ''|*[!0-9]*|0|0*) d3k_error "D3K_STARTUP_TIMEOUT must be a positive integer without leading zeros"; return 2;; esac
  [ "${#D3K_STARTUP_TIMEOUT}" -le 5 ] && [ "$D3K_STARTUP_TIMEOUT" -le 86400 ] || { d3k_error "D3K_STARTUP_TIMEOUT exceeds 86400"; return 2; }
  if [ "${D3K_K3S_IMAGE+x}" ]; then
    [[ "$D3K_K3S_IMAGE" =~ ^[a-zA-Z0-9][a-zA-Z0-9._:/@+-]*$ ]] || { d3k_error 'invalid D3K_K3S_IMAGE reference'; return 2; }
  fi
  if [ "$NOSSH" = false ] && [ "${SSH_PASS+x}" ]; then
    [ -n "$SSH_PASS" ] && [[ "$SSH_PASS" != *$'\n'* ]] && [[ "$SSH_PASS" != *$'\r'* ]] || { d3k_error 'SSH_PASS must be nonempty and contain no line breaks'; return 2; }
  fi
  if [ "$NODOCKER" = true ]; then export NOK8S=true; fi
  if [ "$NODOCKER" = false ]; then
    case "${DOCKER_CONTEXT-}" in ''|default) ;; *) d3k_error "DOCKER_CONTEXT conflicts with the managed daemon"; return 2;; esac
    case "${DOCKER_HOST-}" in ''|unix:///var/run/docker.sock) ;; *) d3k_error "DOCKER_HOST conflicts with the managed daemon"; return 2;; esac
    # Context wins over DOCKER_HOST, so remove it from this process environment.
    unset DOCKER_CONTEXT
    export DOCKER_HOST=unix:///var/run/docker.sock
  fi
  export D3K_RUNTIME_DIR=${D3K_RUNTIME_DIR:-/run/d3k}
}
