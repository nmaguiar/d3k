#!/usr/bin/env bash
# Same Trivy scanner as existing oJob reports, with retained raw JSON and frozen DBs.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
source "$root/scripts/lock.sh"
export D3K_LOCK_FILE=$root/versions.yaml
scanner=$(lock_get TRIVY_IMAGE)
action=${1:?prepare|archive|oci-archive|image}
if [ "$action" = prepare ]; then
  mkdir -p "${2:?cache directory}"
  cache=$(cd "$2" && pwd)
  docker run --rm -v "$cache:/root/.cache/trivy" "$scanner" image --download-db-only
  docker run --rm -v "$cache:/root/.cache/trivy" "$scanner" image --download-java-db-only
  docker run --rm -v "$cache:/root/.cache/trivy:ro" "$scanner" --version > "$cache/scanner-version.txt"
  find "$cache" -type f \( -name '*.db' -o -name metadata.json \) -exec shasum -a 256 {} \; > "$cache/database.sha256"
  printf '%s\n' "$scanner" > "$cache/scanner-image.txt"
  exit
fi
input=${2:?image or archive}; cache=$(cd "${3:?prepared cache directory}" && pwd)
out=${4:?output JSON}
platform=${D3K_SCAN_PLATFORM:?set D3K_SCAN_PLATFORM=linux/amd64 or linux/arm64 explicitly}
case "$platform" in linux/amd64|linux/arm64) ;; *) exit 2;; esac
[ -s "$cache/database.sha256" ] || { echo 'Prepare one shared scanner database snapshot first' >&2; exit 2; }
mkdir -p "$(dirname "$out")"
destination=$(cd "$(dirname "$out")" && pwd)/$(basename "$out")
layout='' report=''
cleanup() { [ -z "$report" ] || rm -f "$report"; [ -z "$layout" ] || rm -rf "$layout"; }
trap cleanup EXIT
rm -f "$destination" "$destination.sha256" "$destination.stderr"
report=$(mktemp "${destination}.partial.XXXXXXXX")
command=(docker run --rm -v "$cache/db:/root/.cache/trivy/db:ro" -v "$cache/java-db:/root/.cache/trivy/java-db:ro" --tmpfs '/root/.cache/trivy/fanal:rw,size=268435456')
if [ "$action" = oci-archive ]; then
  # Trivy accepts an OCI layout directory, not a BuildKit OCI tar as --input.
  # Extract only our built candidate into a private temporary directory. Keep
  # its original archive, manifests and attestations unchanged for release review.
  layout=$(mktemp -d "${TMPDIR:-/tmp}/d3k-oci.XXXXXXXX")
  tar -xf "$input" -C "$layout"
  test -s "$layout/index.json" && test -s "$layout/oci-layout"
  command+=(-v "$layout:/input-oci:ro")
  target=(--input /input-oci)
elif [ "$action" = archive ]; then
  archive=$(cd "$(dirname "$input")" && pwd)/$(basename "$input")
  command+=(-v "$archive:/input.tar:ro")
  target=(--input /input.tar)
elif [ "$action" = image ]; then
  case "$input" in *@sha256:*) ;; *) echo 'Remote scans require immutable image digests' >&2; exit 2;; esac
  target=("$input")
else exit 2; fi
# Avoid an image socket mount. Archive scanning cannot control the host daemon.
if "${command[@]}" "$scanner" image --platform "$platform" --skip-db-update --skip-java-db-update --scanners vuln --format json --list-all-pkgs "${target[@]}" > "$report" 2> "$destination.stderr"; then
  test -s "$report"
  mv "$report" "$destination"
else
  code=$?
  cat "$destination.stderr" >&2
  echo "d3k: scan failed (exit $code); no complete report at $destination" >&2
  exit "$code"
fi
shasum -a 256 "$destination" > "$destination.sha256"
