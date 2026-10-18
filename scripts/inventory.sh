#!/usr/bin/env bash
# Invoke inside d3k. Does not dump environment, kubeconfigs, or credentials.
set -euo pipefail
cat /etc/os-release
id
dpkg-query -W
for command in docker k3d kubectl helm skopeo; do
  case "$command" in docker) docker --version;; k3d) k3d version;; kubectl) kubectl version --client=true -o json;; helm) helm version --short;; skopeo) skopeo --version;; esac
done
docker-compose version
docker buildx version
/opt/oaf/jre/bin/java -version 2>&1
oaf -c 'print(getVersion())'
opack list
