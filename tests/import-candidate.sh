#!/usr/bin/env bash
# Exercise the import boundary with real JSON checks and mocked transports.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/bin"
cat > "$tmp/source.json" <<'JSON'
{"architecture":"arm64","os":"linux","config":{"User":"user","Env":["A=1"],"Entrypoint":["/bin/sh"],"WorkingDir":"/work"},"rootfs":{"type":"layers","diff_ids":["sha256:one","sha256:two"]}}
JSON
cat > "$tmp/bin/skopeo" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
case "$1" in
  --version) echo fixture-skopeo;;
  copy) [ "${D3K_TEST_COPY_FAIL:-0}" = 0 ] || exit 19;;
  inspect)
    case "${!#}" in
      oci-archive:*) cat "$D3K_TEST_IMPORT/source.json";;
      docker-daemon:*) cat "$D3K_TEST_IMPORT/imported.json";;
      *) exit 99;;
    esac;;
  *) exit 99;;
esac
SH
cat > "$tmp/bin/docker" <<'SH'
#!/usr/bin/env bash
case "$*" in
  info) echo fixture-store;;
  'image inspect '*) echo '[{"Id":"sha256:manifest-not-config"}]';;
  *) exit 99;;
esac
SH
chmod +x "$tmp/bin/"*
export PATH="$tmp/bin:$PATH" D3K_TEST_IMPORT=$tmp
# Equivalent JSON, different serialization and Docker manifest ID must pass.
jq . "$tmp/source.json" > "$tmp/imported.json"
bash "$root/scripts/import-candidate.sh" fixture.tar fixture:candidate arm64 "$tmp/pass"
grep -q 'docker_image_id=sha256:manifest-not-config' "$tmp/pass/import-identity.txt"
for mutation in '.rootfs.diff_ids |= reverse' '.config.Env = ["A=2"]' '.config.Entrypoint = ["/bin/other"]' '.architecture = "amd64"'; do
  jq "$mutation" "$tmp/source.json" > "$tmp/imported.json"
  if bash "$root/scripts/import-candidate.sh" fixture.tar fixture:candidate arm64 "$tmp/fail" > "$tmp/log" 2>&1; then
    echo "FAIL: accepted altered candidate: $mutation" >&2; exit 1
  fi
  grep -q 'differs from the OCI candidate' "$tmp/log"
done
code=0
D3K_TEST_COPY_FAIL=1 bash "$root/scripts/import-candidate.sh" fixture.tar fixture:candidate arm64 "$tmp/copy-fail" > "$tmp/log" 2>&1 || code=$?
test "$code" = 19
echo 'PASS: manifest/config ID distinction, JSON serialization, altered layers/config/platform rejection, transport failure (mock transports)'
