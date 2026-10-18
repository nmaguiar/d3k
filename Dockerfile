# Default base matches versions.yaml; scripts/build.sh checks the lock and passes it.
ARG BASE_IMAGE=debian:trixie-slim@sha256:a29215f6a35e51e22adffa17f89e9d2ef06214e64a2bad10d765c46aea49f11f
ARG BUILDX_GO_BASE=golang:1.26.9-bookworm@sha256:d9c68c2c51161e12fd77e4c6320687c9cd86e1af1e3ad6e6cd63ff970641453c
FROM --platform=$BUILDPLATFORM ${BUILDX_GO_BASE} AS buildx-source
ARG TARGETARCH
COPY versions.yaml /etc/d3k-versions.yaml
COPY scripts/lock.sh scripts/build-buildx.sh /usr/local/lib/d3k/
RUN bash /usr/local/lib/d3k/build-buildx.sh fetch
RUN --network=none bash /usr/local/lib/d3k/build-buildx.sh build "$TARGETARCH"
FROM scratch AS buildx-artifact
COPY --from=buildx-source /out/ /
FROM ${BASE_IMAGE} AS main
USER root
COPY --from=buildx-source /out/docker-buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY --from=buildx-source /out/buildx-build.txt /usr/share/d3k/buildx-build.txt
COPY --from=buildx-source /src/LICENSE /usr/share/doc/d3k-buildx/LICENSE
COPY --from=buildx-source /usr/local/go/LICENSE /usr/share/doc/d3k-buildx/Go-LICENSE
COPY versions.yaml /etc/d3k-versions.yaml
COPY scripts/install.sh scripts/lock.sh /usr/local/lib/d3k/
RUN chmod +x /usr/local/lib/d3k/*.sh && /usr/local/lib/d3k/install.sh
COPY scripts/environment.sh scripts/runtime.sh scripts/engine.sh scripts/cluster.sh scripts/rootless.sh scripts/interactive.sh scripts/socks.yaml /usr/local/lib/d3k/
COPY scripts/docker-compose.sh /usr/bin/docker-compose
COPY ojob_p1.sh /home/user/.p1.sh
COPY ojob_p2.yaml /home/user/.p2.yaml
COPY status.js /usr/bin/status.js
COPY welcome.txt /etc/d3k
COPY USAGE.md /USAGE.md
RUN chmod +x /usr/local/lib/d3k/*.sh /home/user/.p1.sh /usr/bin/status.js /usr/bin/docker-compose \
 && ln -s /usr/bin/k3d /usr/local/bin/k3d \
 && chown user:user /home/user/.p1.sh /home/user/.p2.yaml \
 && gzip /etc/d3k /USAGE.md \
 && printf '#!/bin/sh\nzcat /USAGE.md.gz | oafp in=md mdtemplate=true | less -r\n' > /usr/bin/usage-help \
 && chmod +x /usr/bin/usage-help \
 && printf '\nsource /usr/local/lib/d3k/interactive.sh\n' >> /etc/bash.bashrc \
 && sudo -u user /opt/oaf/oaf --bashcompletion all > /home/user/.openaf_completion_bash.sh \
 && chown user:user /home/user/.openaf_completion_bash.sh
USER user
WORKDIR /home/user
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    HOME=/home/user \
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/oaf:/opt/oaf/ojobs \
    DOCKER_HOST=unix:///var/run/docker.sock \
    D3K_DOCKER_MODE=rootful
ENTRYPOINT ["/usr/bin/tini", "-g", "--", "/bin/bash", "/home/user/.p1.sh"]
