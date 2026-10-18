#!/usr/bin/env bash
# Discovery only: never edit the lock, tags, or host configuration.
set -euo pipefail
cd "$(dirname "$0")/.."
source scripts/lock.sh
export D3K_LOCK_FILE=$PWD/versions.yaml
out=${1:?output directory}
mkdir -p "$out"
printf 'input\tlocked\tcurrent\tstatus\n' > "$out/digests.tsv"
for key in DEBIAN_BASE UBUNTU_BASE K3S_IMAGE REGISTRY_IMAGE K3D_PROXY_IMAGE K3D_TOOLS_IMAGE TRIVY_IMAGE; do
  image=$(lock_get "$key")
  if skopeo inspect --raw "docker://${image%@*}" > "$out/$key.json" 2> "$out/$key.log"; then
    current=sha256:$(shasum -a 256 "$out/$key.json" | cut -d' ' -f1)
    result=UNCHANGED; [ "$current" = "${image##*@}" ] || result=REFRESH_AVAILABLE
    printf '%s\t%s\t%s\t%s\n' "$key" "${image##*@}" "$current" "$result" >> "$out/digests.tsv"
  else printf '%s\t%s\tunknown\tNOT TESTED\n' "$key" "${image##*@}" >> "$out/digests.tsv"; fi
done
for repo in k3d-io/k3d helm/helm aquasecurity/trivy k3s-io/k3s; do
  name=${repo//\//_}
  curl --fail --silent --show-error --location --connect-timeout 10 --max-time 30 "https://api.github.com/repos/$repo/releases/latest" > "$out/$name.release.json" 2> "$out/$name.log" || printf '%s\n' 'NOT TESTED: release discovery unavailable' > "$out/$name.status"
done
curl --fail --silent --show-error --location --max-time 30 https://dl.k8s.io/release/stable-1.35.txt > "$out/kubectl-compatible-patch.txt"
cat "$out/digests.tsv"
