#!/usr/bin/env bash
# Read-only registry/daemon inventory. Never inspect credential-bearing Config.Env.
set -euo pipefail
out=${1:?usage: capture-references.sh OUTPUT_DIRECTORY}
mkdir -p "$out"
git rev-parse HEAD > "$out/revision.txt"
date -u +%FT%TZ > "$out/captured-at.txt"
for image in nmaguiar/d3k:latest nmaguiar/d3k:build nmaguiar/d3k:build-full ubuntu:rolling debian:trixie-slim; do
  name=${image//\//_}; name=${name//:/_}
  skopeo inspect --raw "docker://docker.io/$image" > "$out/$name.index.json"
  shasum -a 256 "$out/$name.index.json" > "$out/$name.index.sha256"
done
if docker info >/dev/null 2>&1; then
  docker info --format 'os={{.OperatingSystem}} arch={{.Architecture}} kernel={{.KernelVersion}} engine={{.ServerVersion}} cgroups={{.CgroupVersion}} driver={{.CgroupDriver}} storage={{.Driver}} filesystem={{json .DriverStatus}} memory={{.MemTotal}} cpus={{.NCPU}}' > "$out/host.txt"
  docker context show >> "$out/host.txt"
  docker image inspect nmaguiar/d3k:build --format 'id={{.Id}} digests={{json .RepoDigests}} size={{.Size}} arch={{.Architecture}}' > "$out/local-reference.txt" 2>/dev/null || true
else
  echo 'NOT TESTED: Docker daemon inaccessible' > "$out/host.txt"
fi
