#!/usr/bin/env bash
# Build-only Go runtime. Match upstream flags and use its vendored dependency tree.
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
version=$(lock_get BUILDX_VERSION)
revision=$(lock_get BUILDX_REVISION)
checksum=$(lock_get BUILDX_SOURCE_SHA256)
source_url="https://codeload.github.com/docker/buildx/tar.gz/refs/tags/$version"
case "${1:-}" in
  fetch)
    curl --fail --silent --show-error --location --retry 3 --connect-timeout 20 --max-time 300 "$source_url" -o /tmp/buildx.tgz
    printf '%s  /tmp/buildx.tgz\n' "$checksum" | sha256sum -c -
    mkdir /src
    tar xzf /tmp/buildx.tgz --strip-components=1 -C /src
    test -s /src/vendor/modules.txt
    rm /tmp/buildx.tgz;;
  build)
    arch=${2:?target architecture}
    case "$arch" in amd64|arm64) ;; *) exit 2;; esac
    test "$(go env GOVERSION)" = "$(lock_get BUILDX_GO_VERSION)"
    export CGO_ENABLED=0 GOOS=linux GOARCH=$arch GOTOOLCHAIN=local GOPROXY=off GOSUMDB=off
    cd /src
    mkdir /out
    pkg=github.com/docker/buildx
    go build -mod=vendor -trimpath -ldflags "-s -w -X $pkg/version.Version=$version -X $pkg/version.Revision=$revision -X $pkg/version.Package=$pkg" -o /out/docker-buildx ./cmd/buildx
    {
      printf 'source: %s\nsource-sha256: %s\nrevision: %s\nbuilder: %s\n' "$source_url" "$checksum" "$revision" "$(lock_get BUILDX_GO_BASE)"
      go version -m /out/docker-buildx
      cd /out
      printf 'sha256: '; sha256sum docker-buildx
    } > /out/buildx-build.txt;;
  *) echo 'usage: build-buildx.sh fetch|build ARCH' >&2; exit 2;;
esac
