#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
source scripts/lock.sh
export D3K_LOCK_FILE=$PWD/versions.yaml
exec docker build --build-arg "BASE_IMAGE=$(lock_get DEBIAN_BASE)" --build-arg "BUILDX_GO_BASE=$(lock_get BUILDX_GO_BASE)" "$@" .
