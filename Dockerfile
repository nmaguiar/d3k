# Default base matches versions.yaml; scripts/build.sh checks the lock and passes it.
ARG BASE_IMAGE=debian:trixie-slim@sha256:a29215f6a35e51e22adffa17f89e9d2ef06214e64a2bad10d765c46aea49f11f
FROM ${BASE_IMAGE} AS main
USER root
COPY versions.yaml /etc/d3k-versions.yaml
COPY scripts/install.sh scripts/lock.sh /usr/local/lib/d3k/
RUN chmod +x /usr/local/lib/d3k/*.sh && /usr/local/lib/d3k/install.sh
COPY scripts/environment.sh scripts/runtime.sh scripts/engine.sh scripts/rootless.sh scripts/interactive.sh scripts/socks.yaml /usr/local/lib/d3k/
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
