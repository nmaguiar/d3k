#!/usr/bin/env bash
# Mock only the scanner process: exercise real extraction, arguments, atomic
# output and cleanup. Actual Trivy/attestation coverage is an integration check.
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir -p "$tmp/bin" "$tmp/layout" "$tmp/db/db" "$tmp/db/java-db"
printf '{}\n' > "$tmp/layout/index.json"
printf '{"imageLayoutVersion":"1.0.0"}\n' > "$tmp/layout/oci-layout"
printf 'fixture\n' > "$tmp/db/database.sha256"
tar -cf "$tmp/input.tar" -C "$tmp/layout" index.json oci-layout
before=$(shasum -a 256 "$tmp/input.tar")
cat > "$tmp/bin/docker" <<'MOCK'
#!/usr/bin/env bash
set -euo pipefail
for argument in "$@"; do
  case "$argument" in *:/input-oci:ro)
    directory=${argument%:/input-oci:ro}
    test -s "$directory/index.json"
    test -s "$directory/oci-layout"
    printf '%s\n' "$directory" > "$D3K_TEST_SCAN_LOG";;
  esac
done
if [ "${D3K_TEST_SCAN_FAIL:-0}" = 1 ]; then
  printf '{partial'
  echo 'fixture scanner failure' >&2
  exit 13
fi
printf '{"Results":[]}\n'
MOCK
chmod +x "$tmp/bin/docker"
export PATH="$tmp/bin:$PATH" D3K_SCAN_PLATFORM=linux/arm64 D3K_TEST_SCAN_LOG=$tmp/mount
bash "$root/scripts/scan.sh" oci-archive "$tmp/input.tar" "$tmp/db" "$tmp/report.json"
test -s "$tmp/report.json.sha256"
test "$(cat "$tmp/report.json")" = '{"Results":[]}'
test ! -e "$(cat "$tmp/mount")"
test "$(shasum -a 256 "$tmp/input.tar")" = "$before"
set +e
D3K_TEST_SCAN_FAIL=1 bash "$root/scripts/scan.sh" oci-archive "$tmp/input.tar" "$tmp/db" "$tmp/report.json" 2> "$tmp/failure"
code=$?
set -e
test "$code" = 13
test ! -e "$tmp/report.json"
test ! -e "$tmp/report.json.sha256"
test ! -e "$(cat "$tmp/mount")"
grep -q 'fixture scanner failure' "$tmp/report.json.stderr"
echo 'PASS: OCI extraction, unchanged archive, scanner errors, atomic reports and temporary cleanup (mock scanner)'
