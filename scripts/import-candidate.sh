#!/usr/bin/env bash
# Docker's image ID can identify a manifest rather than its config blob.
# Verify the imported platform, runtime configuration and ordered filesystem
# diff IDs directly; retain both representations for failure diagnosis.
set -euo pipefail

archive=${1:?OCI archive}
image=${2:?local image tag}
arch=${3:?amd64 or arm64}
out=${4:?evidence directory}

case "$arch" in amd64|arm64) ;; *) exit 2;; esac
mkdir -p "$out"

# Capture the transport versions and both sides of the import.
docker info > "$out/import-docker-info.txt"
skopeo --version > "$out/import-skopeo-version.txt"
skopeo inspect --override-os linux --override-arch "$arch" --config --raw "oci-archive:$archive" > "$out/candidate-config.json"
skopeo copy --override-os linux --override-arch "$arch" "oci-archive:$archive" "docker-daemon:$image"
docker image inspect "$image" > "$out/imported-image.json"
skopeo inspect --config --raw "docker-daemon:$image" > "$out/imported-config.json"

# Retain identity representations without assuming they use the same digest.
{
  printf 'oci_config=sha256:%s\n' "$(shasum -a 256 "$out/candidate-config.json" | cut -d' ' -f1)"
  printf 'imported_config=sha256:%s\n' "$(shasum -a 256 "$out/imported-config.json" | cut -d' ' -f1)"
  printf 'docker_image_id=%s\n' "$(jq -r '.[0].Id' "$out/imported-image.json")"
} | tee "$out/import-identity.txt"

# Object member order/JSON formatting do not change image contents. Creation
# time and build history are recorded above but are not runtime configuration.
jq -e --arg arch "$arch" --slurpfile expected "$out/candidate-config.json" '
  $expected[0] as $source |
  .os == "linux" and .architecture == $arch and
  .rootfs.type == "layers" and (.rootfs.diff_ids | length) > 0 and
  (del(.created, .history) == ($source | del(.created, .history)))
' "$out/imported-config.json" > "$out/import-verification.txt" || {
  echo 'd3k: imported candidate platform/configuration/rootfs differs from the OCI candidate; see retained import evidence' >&2
  exit 1
}

echo 'PASS: imported candidate platform, runtime configuration and ordered rootfs diff IDs match OCI'
