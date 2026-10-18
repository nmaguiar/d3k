#!/usr/bin/env bash
# Restricted flat YAML scalars: no eval and no bootstrap language runtime.
lock_get() {
  local file=${D3K_LOCK_FILE:-/etc/d3k-versions.yaml} value
  value=$(awk -v key="$1" '$1 == key ":" { sub(/^[^:]*: */, ""); print; count++ } END { if (count != 1) exit 2 }' "$file") || return 2
  [ -n "$value" ] || return 2
  printf '%s\n' "$value"
}

