#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
source scripts/lock.sh
export D3K_LOCK_FILE=$PWD/versions.yaml

# --locked is consumed here; remaining arguments go to docker build unchanged.
if [ "${1:-}" = --locked ]; then
  shift
else
  python3 scripts/update-versions.py
fi

# Pass the resolved pins explicitly while preserving caller-supplied arguments.
exec docker build \
  --build-arg "BASE_IMAGE=$(lock_get DEBIAN_BASE)" \
  --build-arg "BUILDX_GO_BASE=$(lock_get BUILDX_GO_BASE)" \
  "$@" .
