#!/usr/bin/env bash
set -euo pipefail
source /usr/local/lib/d3k/lock.sh
arch=$(dpkg --print-architecture)
case "$arch" in amd64|arm64) ;; *) echo "Unsupported architecture: $arch" >&2; exit 2;; esac
download() {
  curl --fail --show-error --silent --location --retry 3 --connect-timeout 20 --max-time 300 "$1" -o "$2"
  printf '%s  %s\n' "$3" "$2" | sha256sum -c -
}
export DEBIAN_FRONTEND=noninteractive
printf '#!/bin/sh\nexit 101\n' > /usr/sbin/policy-rc.d
chmod +x /usr/sbin/policy-rc.d
apt-get update
apt-get upgrade -y --no-install-recommends
apt-get install -y --no-install-recommends ca-certificates curl wget sudo vim less tmux iproute2 net-tools uidmap iputils-ping openssh-server fuse-overlayfs dnsutils zip unzip skopeo htop bash-completion tini libatomic1
install -d -m 0755 /etc/apt/keyrings
download https://download.docker.com/linux/debian/gpg /etc/apt/keyrings/docker.asc "$(lock_get DOCKER_KEY_SHA256)"
printf 'deb [arch=%s signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian trixie stable\n' "$arch" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y --no-install-recommends "docker-ce=$(lock_get DOCKER_VERSION)" "docker-ce-cli=$(lock_get DOCKER_VERSION)" "docker-ce-rootless-extras=$(lock_get DOCKER_VERSION)" "slirp4netns=$(lock_get SLIRP4NETNS_VERSION)" "containerd.io=$(lock_get CONTAINERD_VERSION)" "docker-buildx-plugin=$(lock_get BUILDX_VERSION)" "docker-compose-plugin=$(lock_get COMPOSE_VERSION)"
update-alternatives --set iptables /usr/sbin/iptables-legacy
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
install -d /etc/docker
printf '{"storage-driver":"vfs","features":{"containerd-snapshotter":false}}\n' > /etc/docker/daemon.json
mkdir -p /opt/oaf/jre
cd /opt/oaf
download https://openaf.io/openaf.jar openaf.jar.orig "$(lock_get OPENAF_JAR_SHA256)"
download https://openaf.io/openaf.jar.repacked openaf.jar "$(lock_get OPENAF_REPACKED_SHA256)"
download "$(lock_get JVM_${arch}_URL)" /tmp/jre.tgz "$(lock_get JVM_${arch}_SHA256)"
tar xzf /tmp/jre.tgz --strip-components=1 -C jre
jre/bin/java -jar openaf.jar --install
chmod +x /opt/oaf/*-sb
export PATH=/opt/oaf:$PATH
# Preserve upstream generated launchers and argument boundaries.
for binary in oaf oaf-sb ojob-sb oafc ojob oafp opack openaf openaf-console openaf-sb; do
  [ ! -f "/opt/oaf/$binary" ] || printf '#!/bin/sh\nexec /bin/sh /opt/oaf/%s "$@"\n' "$binary" > "/usr/bin/$binary"
  [ ! -f "/usr/bin/$binary" ] || chmod +x "/usr/bin/$binary"
done
# Remaining mutable inputs are documented; retain upstream package verification.
for pack in BouncyCastle ojob-common DockerRegistry Kube; do opack install "$pack"; done
mkdir -p /opt/oaf/ojobs
for job in oaf/colorFormats util/vscTunnel; do
  name=${job##*/}
  ojob ojob.io/get "job=ojob.io/$job.yaml" > "/opt/oaf/ojobs/$name.yaml"
  oaf --sb "/opt/oaf/ojobs/$name.yaml"
done
chmod +x /opt/oaf/ojobs/*
k3d=$(lock_get K3D_VERSION)
download "https://github.com/k3d-io/k3d/releases/download/$k3d/k3d-linux-$arch" /usr/bin/k3d "$(lock_get K3D_${arch}_SHA256)"
download "https://dl.k8s.io/release/$(lock_get KUBECTL_VERSION)/bin/linux/$arch/kubectl" /usr/bin/kubectl "$(lock_get KUBECTL_${arch}_SHA256)"
download "https://get.helm.sh/helm-$(lock_get HELM_VERSION)-linux-$arch.tar.gz" /tmp/helm.tgz "$(lock_get HELM_${arch}_SHA256)"
tar xzf /tmp/helm.tgz -C /tmp "linux-$arch/helm"
mv "/tmp/linux-$arch/helm" /usr/bin/helm
chmod +x /usr/bin/k3d /usr/bin/kubectl /usr/bin/helm
printf '#!/bin/sh\nexec docker compose "$@"\n' > /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
groupadd -g 1001 user
useradd -m -u 1001 -g 1001 -G docker -s /bin/bash user
# useradd normally creates these; require explicit, non-overlapping mappings.
sed -i '/^user:/d' /etc/subuid /etc/subgid
printf 'user:100000:65536\n' >> /etc/subuid
printf 'user:100000:65536\n' >> /etc/subgid
printf 'user ALL=(ALL) NOPASSWD: ALL\n' > /etc/sudoers.d/user
chmod 440 /etc/sudoers.d/user
# No embedded password, host identity, or writable passwd database.
passwd -l user
rm -f /etc/ssh/ssh_host_*
install -d -o 1001 -g 1001 -m 0700 /run/d3k
install -d -o 1001 -g 1001 -m 0700 /run/user/1001
mkdir -p /usr/share/d3k
dpkg-query -W > /usr/share/d3k/packages.tsv
rootlesskit --version > /usr/share/d3k/rootless-toolchain.txt
slirp4netns --version >> /usr/share/d3k/rootless-toolchain.txt
sha256sum /usr/bin/rootlesskit /usr/bin/dockerd-rootless.sh /usr/bin/slirp4netns /usr/bin/newuidmap /usr/bin/newgidmap > /usr/share/d3k/rootless-toolchain.sha256
opack list > /usr/share/d3k/opacks.txt
oaf -c 'print(getVersion())' > /usr/share/d3k/openaf-version.txt
test "$(cat /usr/share/d3k/openaf-version.txt)" = "$(lock_get OPENAF_VERSION)"
sha256sum /opt/oaf/ojobs/*.yaml > /usr/share/d3k/jobs.sha256
jre/bin/java -version 2> /usr/share/d3k/java-version.txt
rm -rf /tmp/jre.tgz /tmp/helm.tgz "/tmp/linux-$arch" /var/lib/apt/lists/*
apt-get clean
