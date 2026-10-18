#!/usr/bin/env bash
# No daemon required: exercise packaged plugin discovery, bake and build provenance.
set -euo pipefail
image=${1:?image}; out=${2:?evidence directory}
root=$(cd "$(dirname "$0")/.." && pwd)
mkdir -p "$out"
docker run --rm --network none -i -v "$root:/workspace:ro" -e NODOCKER=true -e NOSSH=true "$image" bash -s <<'SH' > "$out/results.log" 2>&1
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
docker buildx version | grep -F "$(lock_get BUILDX_VERSION) $(lock_get BUILDX_REVISION)"
docker buildx build --help >/dev/null
docker buildx imagetools --help >/dev/null
printf 'target "default" { context = "." }\n' > /tmp/docker-bake.hcl
docker buildx bake -f /tmp/docker-bake.hcl --print > /tmp/bake.json
grep -q '"context": "."' /tmp/bake.json
if dpkg-query -W -f='${Status}' docker-buildx-plugin 2>/dev/null | grep -q 'install ok installed'; then exit 1; fi
if command -v go; then echo 'Unexpected Go runtime in final image' >&2; exit 1; fi
test -s /usr/share/doc/d3k-buildx/LICENSE
test -s /usr/share/doc/d3k-buildx/Go-LICENSE
grep -F "$(lock_get BUILDX_GO_VERSION)" /usr/share/d3k/buildx-build.txt
(cd /usr/libexec/docker/cli-plugins && grep '^sha256:' /usr/share/d3k/buildx-build.txt | sed 's/^sha256: //' | sha256sum -c -)
# Use the real OpenAF checker to reject missing/wrong coverage and regressions.
cd /workspace
for fixture in covered missing compiler modules vulnerable duplicate; do
  compiler="$(lock_get BUILDX_GO_VERSION)"; compiler=v${compiler#go}
  module='{"Name":"github.com/docker/cli","Version":"v29.9.1"}'
  vulnerabilities='[]'
  case "$fixture" in
    compiler) compiler=v1.26.8;;
    modules) module='{"Name":"other","Version":"v1.0.0"}';;
    vulnerable) vulnerabilities='[{"PkgName":"stdlib","VulnerabilityID":"CVE-2026-78667"}]';;
  esac
  result=$(printf '{"Target":"usr/libexec/docker/cli-plugins/docker-buildx","Type":"gobinary","Packages":[{"Name":"stdlib","Version":"%s"},%s],"Vulnerabilities":%s}' "$compiler" "$module" "$vulnerabilities")
  case "$fixture" in
    missing) echo '{"Results":[]}' > /tmp/buildx-scan.json;;
    duplicate) printf '{"Results":[%s,%s]}' "$result" "$result" > /tmp/buildx-scan.json;;
    *) printf '{"Results":[%s]}' "$result" > /tmp/buildx-scan.json;;
  esac
  code=0
  oaf -f scripts/check-buildx-scan.js -e input=/tmp/buildx-scan.json > /tmp/check.log 2>&1 || code=$?
  if [ "$fixture" = covered ]; then test "$code" = 0; else test "$code" = 1; fi
done
echo 'PASS: buildx version, plugin help, offline bake, provenance and absence of build runtime/duplicate package'
echo 'PASS: real OpenAF coverage check accepts covered scans and rejects missing, duplicate, wrong compiler/module and original CVE fixtures'
SH
cat "$out/results.log"
