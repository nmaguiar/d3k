#!/usr/bin/env bash
set -euo pipefail
lib=${D3K_LIB_DIR:-/usr/local/lib/d3k}
source "$lib/environment.sh"
D3K_LOAD_ENV=0 d3k_resolve
umask 077
mkdir -p "$D3K_RUNTIME_DIR"
[ ! -L "$D3K_RUNTIME_DIR" ] && [ -O "$D3K_RUNTIME_DIR" ] || { echo 'd3k: runtime directory must be owned and not a symlink' >&2; exit 2; }
chmod 700 "$D3K_RUNTIME_DIR"
rm -f "$D3K_RUNTIME_DIR/"*.state "$D3K_RUNTIME_DIR/"*.pid
for field in NOSSH NODOCKER NOK8S NOPUBLIC D3K_DOCKER_MODE D3K_STARTUP_TIMEOUT; do
  printf '%s=%s\n' "$field" "${!field}"
done > "$D3K_RUNTIME_DIR/environment"
if [ "$NODOCKER" = false ]; then printf 'DOCKER_HOST=%s\n' "$DOCKER_HOST" >> "$D3K_RUNTIME_DIR/environment"; fi
# Caller argv belongs only to the command. oJob owns background initialization.
: > "$D3K_RUNTIME_DIR/startup.log"
ojob /home/user/.p2.yaml >> "$D3K_RUNTIME_DIR/startup.log" 2>&1 &
if [ "$#" -eq 0 ]; then set -- tail -f /dev/null; fi
# Exec preserves foreground TTY ownership, signal dispositions and exit status.
exec "$@"
