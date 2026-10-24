#!/usr/bin/env bash
set -euo pipefail

source /usr/local/lib/d3k/lock.sh
arch=$(dpkg --print-architecture)
case "$arch" in amd64|arm64) ;; *) echo "Unsupported architecture: $arch" >&2; exit 2;; esac

# Locked inputs fail on content changes. Nightly OpenAF is handled separately.
download() {
  curl --fail --show-error --silent --location --retry 3 --connect-timeout 20 --max-time 300 "$1" -o "$2"
  if ! printf '%s  %s\n' "$3" "$2" | sha256sum -c -; then
    echo "d3k: download checksum mismatch for $1; expected $3; observed:" >&2
    sha256sum "$2" >&2
    return 1
  fi
}

# Package installation must not start daemons during the image build.
export DEBIAN_FRONTEND=noninteractive
printf '#!/bin/sh\nexit 101\n' > /usr/sbin/policy-rc.d
chmod +x /usr/sbin/policy-rc.d
apt-get update
apt-get upgrade -y --no-install-recommends
apt-get install -y --no-install-recommends \
  ca-certificates curl wget sudo vim less tmux iproute2 net-tools uidmap \
  iputils-ping openssh-server fuse-overlayfs dnsutils zip unzip skopeo htop \
  bash-completion tini libatomic1

# Use Docker's signed repository and the selected package versions.
install -d -m 0755 /etc/apt/keyrings
download https://download.docker.com/linux/debian/gpg /etc/apt/keyrings/docker.asc "$(lock_get DOCKER_KEY_SHA256)"
printf 'deb [arch=%s signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian trixie stable\n' "$arch" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y --no-install-recommends \
  "docker-ce=$(lock_get DOCKER_VERSION)" \
  "docker-ce-cli=$(lock_get DOCKER_VERSION)" \
  "docker-ce-rootless-extras=$(lock_get DOCKER_VERSION)" \
  "slirp4netns=$(lock_get SLIRP4NETNS_VERSION)" \
  "containerd.io=$(lock_get CONTAINERD_VERSION)" \
  "docker-compose-plugin=$(lock_get COMPOSE_VERSION)"

# Buildx is source-built in a separate stage; don't retain the vulnerable package.
if dpkg-query -W -f='${Status}' docker-buildx-plugin 2>/dev/null | grep -q 'install ok installed'; then
  echo 'Unexpected packaged buildx installation' >&2; exit 1
fi
docker buildx version | grep -F "$(lock_get BUILDX_VERSION) $(lock_get BUILDX_REVISION)"
(cd /usr/libexec/docker/cli-plugins && grep '^sha256:' /usr/share/d3k/buildx-build.txt | sed 's/^sha256: //' | sha256sum -c -)

# Keep the rootful compatibility profile explicit.
update-alternatives --set iptables /usr/sbin/iptables-legacy
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
install -d /etc/docker
printf '{"storage-driver":"vfs","features":{"containerd-snapshotter":false}}\n' > /etc/docker/daemon.json

# Download the moving nightly artifacts and retain their actual identity.
mkdir -p /opt/oaf/jre
cd /opt/oaf
# Nightly is intentionally moving. Record the bytes used by this build instead
# of checking them against release hashes or requiring a release version.
curl --fail --show-error --silent --location --retry 3 \
  --connect-timeout 20 --max-time 300 \
  https://openaf.io/nightly/openaf.jar -o openaf.jar.orig
curl --fail --show-error --silent --location --retry 3 \
  --connect-timeout 20 --max-time 300 \
  https://openaf.io/nightly/openaf.jar.repacked -o openaf.jar
test -s openaf.jar.orig && test -s openaf.jar
mkdir -p /usr/share/d3k
sha256sum openaf.jar.orig openaf.jar > /usr/share/d3k/openaf-downloads.sha256
printf 'https://openaf.io/nightly/openaf.jar\nhttps://openaf.io/nightly/openaf.jar.repacked\n' > /usr/share/d3k/openaf-downloads.txt
date -u '+%Y-%m-%dT%H:%M:%SZ' > /usr/share/d3k/openaf-downloaded-at.txt

# The JVM remains checksum-locked even though OpenAF follows nightly.
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

# Follow current oPacks and retain their upstream file-integrity verification.
for pack in BouncyCastle ojob-common DockerRegistry; do opack install "$pack"; done

# The packaged mirror can lag upstream dependency fixes. Use Kube's current
# official source directly, without a d3k version pin or downstream JAR patch.
# Serialize remote copies for this command to avoid nightly runtime copy races.
JAVA_TOOL_OPTIONS="${JAVA_TOOL_OPTIONS:+$JAVA_TOOL_OPTIONS }-XX:ActiveProcessorCount=1" \
  opack install https://raw.githubusercontent.com/OpenAF/openaf-opacks/master/Kube
oaf -f /usr/local/lib/d3k/verify-kube.js

# Generate the bundled OpenAF job launchers.
mkdir -p /opt/oaf/ojobs
for job in oaf/colorFormats util/vscTunnel; do
  name=${job##*/}
  ojob ojob.io/get "job=ojob.io/$job.yaml" > "/opt/oaf/ojobs/$name.yaml"
  oaf --sb "/opt/oaf/ojobs/$name.yaml"
done
chmod +x /opt/oaf/ojobs/*

# Install architecture-specific tools from checksum-locked upstream artifacts.
k3d=$(lock_get K3D_VERSION)
download "https://github.com/k3d-io/k3d/releases/download/$k3d/k3d-linux-$arch" /usr/bin/k3d "$(lock_get K3D_${arch}_SHA256)"
download "https://dl.k8s.io/release/$(lock_get KUBECTL_VERSION)/bin/linux/$arch/kubectl" /usr/bin/kubectl "$(lock_get KUBECTL_${arch}_SHA256)"
download "https://get.helm.sh/helm-$(lock_get HELM_VERSION)-linux-$arch.tar.gz" /tmp/helm.tgz "$(lock_get HELM_${arch}_SHA256)"
tar xzf /tmp/helm.tgz -C /tmp "linux-$arch/helm"
mv "/tmp/linux-$arch/helm" /usr/bin/helm
chmod +x /usr/bin/k3d /usr/bin/kubectl /usr/bin/helm
printf '#!/bin/sh\nexec docker compose "$@"\n' > /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

# Create the developer identity and its explicit rootless UID/GID mappings.
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

# Keep package, runtime and downloaded-artifact evidence in the image.
mkdir -p /usr/share/d3k
dpkg-query -W > /usr/share/d3k/packages.tsv
rootlesskit --version > /usr/share/d3k/rootless-toolchain.txt
slirp4netns --version >> /usr/share/d3k/rootless-toolchain.txt
sha256sum /usr/bin/rootlesskit /usr/bin/dockerd-rootless.sh /usr/bin/slirp4netns /usr/bin/newuidmap /usr/bin/newgidmap > /usr/share/d3k/rootless-toolchain.sha256
opack list > /usr/share/d3k/opacks.txt
find /opt/oaf/Kube -maxdepth 1 -name '*.jar' -exec sha256sum {} \; > /usr/share/d3k/kube-jars.sha256
oaf -c 'print(getVersion())' > /usr/share/d3k/openaf-version.txt
test -s /usr/share/d3k/openaf-version.txt
sha256sum /opt/oaf/ojobs/*.yaml > /usr/share/d3k/jobs.sha256
jre/bin/java -version 2> /usr/share/d3k/java-version.txt

# Remove installation archives and package indexes from the final filesystem.
rm -rf /tmp/jre.tgz /tmp/helm.tgz "/tmp/linux-$arch" /var/lib/apt/lists/*
apt-get clean
