#!/usr/bin/env bash
# A fresh historical-source control, not a reconstruction of its old packages.
set -euo pipefail
cd "$(dirname "$0")/.."
source scripts/lock.sh
export D3K_LOCK_FILE=$PWD/versions.yaml
destination=${1:?new control context directory}; shift
repair=false
if [ "${1:-}" = --repair-adduser ]; then repair=true; shift; fi
mkdir "$destination"
git archive ad705d18d4cdd82c09e3adc966b9d863199d64b7 Dockerfile ojob_p1.sh ojob_p2.yaml status.js welcome.txt USAGE.md | tar xf - -C "$destination"
base=$(lock_get UBUNTU_BASE)
sed "s|FROM ubuntu:rolling as main|FROM $base as main|" "$destination/Dockerfile" > "$destination/Dockerfile.locked"
mv "$destination/Dockerfile.locked" "$destination/Dockerfile"
if [ "$repair" = true ]; then
  sed 's/install -y apt-utils/install -y adduser apt-utils/' "$destination/Dockerfile" > "$destination/Dockerfile.repaired"
  mv "$destination/Dockerfile.repaired" "$destination/Dockerfile"
  printf 'Historical source plus explicit adduser package (original control failed without it).\n' > "$destination/CONTROL-REPAIR.txt"
fi
exec docker build "$@" "$destination"
