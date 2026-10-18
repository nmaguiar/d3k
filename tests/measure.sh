#!/usr/bin/env bash
set -euo pipefail
root=$(cd "$(dirname "$0")/.." && pwd)
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
mkdir "$tmp/bin"
cat > "$tmp/bin/docker" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "$*" >> "$D3K_TEST_COMMANDS"
case "$1" in
  run) echo fixture-container;;
  restart|rm) ;;
  inspect) exit 1;; # no real container for failure diagnostics
  exec)
    shift 2
    case "$*" in
      'status.js check=true json=true timeout=300') echo '{"ready":true}';;
      'sudo -n du -sk '*) printf '1\t/var/lib/docker\n';;
      'docker exec k3d-k3s-default-server-0 crictl --runtime-endpoint unix:///run/k3s/containerd/containerd.sock images -o json')
        [ "$D3K_TEST_MEASURE" != fail ] || exit 19
        echo '{"images":[]}' ;;
      *) exit 99;;
    esac;;
  *) exit 99;;
esac
SH
chmod +x "$tmp/bin/docker"
export PATH="$tmp/bin:$PATH" D3K_TEST_COMMANDS=$tmp/commands D3K_TEST_PRIVILEGED=1
D3K_TEST_MEASURE=success bash "$root/scripts/measure.sh" fixture "$tmp/success"
test "$(wc -l < "$tmp/success/readiness.tsv" | tr -d ' ')" = 4
for n in 1 2 3; do grep -qx '{"images":\[\]}' "$tmp/success/$n.k3s-images.json"; done
code=0
D3K_TEST_MEASURE=fail bash "$root/scripts/measure.sh" fixture "$tmp/fail" || code=$?
test "$code" = 19
# A later inventory failure must preserve the completed timings and invoke diagnostics.
test "$(wc -l < "$tmp/fail/readiness.tsv" | tr -d ' ')" = 2
grep -q '^inspect ' "$tmp/commands"
tail -n 1 "$tmp/commands" | grep -q '^rm -f d3k-measure-'
echo 'PASS: measurement inventory command, three samples, retained timing and original failure status (mock Docker)'
