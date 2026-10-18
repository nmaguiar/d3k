#!/usr/bin/env bash
# Nonprivileged container tests: signals, stale markers, SSH login and forwarding.
set -euo pipefail
image=${1:?}; out=${2:?}
mkdir -p "$out"
out=$(cd "$out" && pwd)
tmp=$(mktemp -d)
name=d3k-session-$(date +%s)-$$
cleanup() { docker logs "$name" > "$out/ssh-container.log" 2>&1 || true; docker cp "$name:/run/d3k/startup.log" "$out/ssh-startup.log" 2>/dev/null || true; docker rm -f "$name" >/dev/null 2>&1 || true; rm -rf "$tmp"; }
trap cleanup EXIT
bounded() {
  "$@" < /dev/null & local child=$!
  (sleep 15; kill -TERM "$child" 2>/dev/null || true) & local timer=$!
  local code=0
  wait "$child" || code=$?
  kill "$timer" 2>/dev/null || true
  wait "$timer" 2>/dev/null || true
  return "$code"
}
docker run -d --name "$name" --network none -e NOSSH=true -e NODOCKER=true "$image" bash -c 'trap "exit 42" TERM; echo ready; while :; do sleep 1; done' >/dev/null
for ((i=0; i<50; i++)); do
  docker logs "$name" 2>/dev/null | grep -q ready && break
  sleep 0.1
done
docker stop -t 5 "$name" >/dev/null
[ "$(docker inspect "$name" --format '{{.State.ExitCode}}')" = 42 ]
docker rm "$name" >/dev/null
echo 'PASS: foreground TERM and exit status'
ssh-keygen -q -t ed25519 -N '' -f "$tmp/key"
docker run -d --name "$name" -e NODOCKER=true --mount "type=bind,src=$tmp/key.pub,dst=/home/user/.ssh/authorized_keys,readonly" -p 127.0.0.1::22 "$image" >/dev/null
docker exec "$name" status.js check=true json=true timeout=30 > "$out/keys-only-status.json"
port=$(docker port "$name" 22/tcp); port=${port##*:}
bounded ssh -F /dev/null -o StrictHostKeyChecking=accept-new -o "UserKnownHostsFile=$tmp/key-only-hosts" -o ConnectTimeout=5 -o BatchMode=yes -p "$port" -i "$tmp/key" user@127.0.0.1 'test "$(id -u)" = 1001'
docker rm -f "$name" >/dev/null
echo 'PASS: mounted authorized keys without SSH_PASS'
# Explicit test-only password contains shell metacharacters; never interpolate it.
export SSH_PASS='literal-$(touch /tmp/d3k-password-injection)-;"quoted'
export D3K_TEST_PASSWORD=$SSH_PASS
docker run -d --name "$name" -e NODOCKER=true -e SSH_PASS -p 127.0.0.1::22 "$image" >/dev/null
docker exec -i "$name" bash -c 'umask 077; mkdir -p ~/.ssh; cat > ~/.ssh/authorized_keys' < "$tmp/key.pub"
docker exec "$name" status.js check=true json=true timeout=30 > "$out/ssh-status.json"
port=$(docker port "$name" 22/tcp)
port=${port##*:}
options=(-F /dev/null -o HostKeyAlias=d3k-session -o StrictHostKeyChecking=accept-new -o "UserKnownHostsFile=$tmp/known_hosts" -o ConnectTimeout=5 -p "$port")
bounded ssh "${options[@]}" -o BatchMode=yes -i "$tmp/key" user@127.0.0.1 'test "$(id -u)" = 1001; test ! -e /tmp/d3k-password-injection; status.js check=true json=true timeout=5' > "$out/ssh-command.json"
bounded ssh "${options[@]}" -o BatchMode=yes -i "$tmp/key" -W 127.0.0.1:22 user@127.0.0.1 > "$out/ssh-forward.txt" || true
grep -q '^SSH-2.0-' "$out/ssh-forward.txt"
cat > "$tmp/askpass" <<'ASKPASS'
#!/bin/sh
printf '%s\n' "$D3K_TEST_PASSWORD"
ASKPASS
chmod +x "$tmp/askpass"
SSH_ASKPASS="$tmp/askpass" SSH_ASKPASS_REQUIRE=force DISPLAY=d3k-test bounded ssh "${options[@]}" -o PubkeyAuthentication=no -o PreferredAuthentications=password -o NumberOfPasswordPrompts=1 user@127.0.0.1 'test "$(id -u)" = 1001'
unset SSH_PASS D3K_TEST_PASSWORD
# Old full-image markers must never trigger startup from interactive login.
docker exec "$name" bash -c 'printf "#!/bin/bash\ntouch /tmp/legacy-marker-ran\n" > ~/.restart; touch ~/.done; bash -ic true; test ! -e /tmp/legacy-marker-ran'
docker restart -t 10 "$name" >/dev/null
docker exec "$name" status.js check=true json=true timeout=30 > "$out/ssh-restart.json"
# Docker can assign a new host port for a :0 publication on restart. Verify the
# same instance host key through a stable alias, rather than assuming that port.
port=$(docker port "$name" 22/tcp); port=${port##*:}
options=(-F /dev/null -o HostKeyAlias=d3k-session -o StrictHostKeyChecking=yes -o "UserKnownHostsFile=$tmp/known_hosts" -o ConnectTimeout=5 -p "$port")
connected=false
for ((attempt=0; attempt<5; attempt++)); do
  if bounded ssh "${options[@]}" -o BatchMode=yes -i "$tmp/key" user@127.0.0.1 'test "$(id -u)" = 1001'; then connected=true; break; fi
  sleep 1
done
[ "$connected" = true ]
echo 'PASS: supplied SSH key/password, noninteractive flags, TCP forwarding, markers, restart'
