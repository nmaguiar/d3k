FROM ubuntu:rolling as main

USER root
RUN apt-get update\
 && apt-get upgrade -y\
 && apt-get install -y apt-utils sudo curl wget vim less tmux iproute2 net-tools uidmap iputils-ping openssh-server fuse-overlayfs dnsutils zip skopeo htop bash-completion\
 && apt-get clean\
 && curl https://openaf.io/install.sh | sh\
 && chmod a+x /opt/oaf/*-sb\
 && curl https://get.docker.com | sh\
 && opack install BouncyCastle\
 && opack install ojob-common\
 && opack install oafproc\
 && opack install DockerRegistry\
 && ojob ojob.io/docker/k3d\
 && ojob ojob.io/kube/getKubectl path=/usr/bin\
 && ojob ojob.io/docker/compose path=/usr/bin\
 && ojob ojob.io/kube/getHelm path=/usr/bin\
 && mkdir /opt/oaf/ojobs\
 && /opt/oaf/ojob ojob.io/get job=ojob.io/oaf/colorFormats.yaml > /opt/oaf/ojobs/colorFormats.yaml\
 && /opt/oaf/oaf --sb /opt/oaf/ojobs/colorFormats.yaml\
 && chmod a+x /opt/oaf/ojobs/*\
 && adduser --gid 0 --uid 1001 --shell /bin/bash user\
 && echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user\
 && chmod g+w /etc/passwd\
 && su - user ojob ojob.io/kube/getKrew\
 && chmod a+x /usr/bin/kubectl\
 && chmod a+x /usr/bin/docker-compose\
 && chmod a+x /usr/bin/helm\
 && usermod -aG docker user\
 && echo "user:Password1" | chpasswd\
 && sed -i "s/AllowTcpForwarding no/AllowTcpForwarding yes/g" /etc/ssh/sshd_config\
 && sed -i "s/GatewayPorts no/GatewayPorts yes/g" /etc/ssh/sshd_config\
 && echo 'if [ ! -e ~/.openaf-ojobio-complete ] || [ $(find ~/.openaf-ojobio-complete -mmin +1440) ]; then curl -s https://ojob.io/autoComplete.sh -o ~/.openaf-ojobio-complete; fi' >> /etc/bash.bashrc\
 && echo "source ~/.openaf-ojobio-complete" >> /etc/bash.bashrc\
 && echo "source <(helm completion bash)" >> /etc/bash.bashrc\
 && echo "source <(kubectl completion bash)" >> /etc/bash.bashrc\
 && echo "source <(docker completion bash)" >> /etc/bash.bashrc\
 && echo "source <(skopeo completion bash)" >> /etc/bash.bashrc\
 && echo "source <(k3d completion bash)" >> /etc/bash.bashrc\
 && echo "source /etc/bash.d3k" >> /etc/bash.bashrc\
 && echo "alias oaf-light-theme='colorFormats.yaml op=set theme=thin-light-bold'" >> /etc/bash.d3k\
 && echo "alias oaf-dark-theme='colorFormats.yaml op=set theme=thin-intense-bold'" >> /etc/bash.d3k\
 && echo "alias oafptab='oafp in=lines linesvisual=true linesjoin=true out=ctable'" >> /etc/bash.d3k\
 && echo "alias help='source /etc/bash.d3k'" >> /etc/bash.d3k\
 && echo "zcat /etc/d3k.gz" >> /etc/bash.d3k

COPY ojob_p2.yaml /tmp/.p2.yaml
COPY ojob_p1.sh /tmp/.p1.sh
COPY status.js /usr/bin/status.js
COPY welcome.txt /etc/d3k

SHELL ["/bin/bash", "-c"]
USER root

RUN chsh --shell /bin/bash user\
 && cd /home/user\
 && mv /tmp/.p1.sh .p1.sh\
 && mv /tmp/.p2.yaml .p2.yaml\
 && chmod a+x .p1.sh\
 && chown user: .p1.sh\
 && chown user: .p2.yaml\
 && chmod a+x /usr/bin/status.js\
 && gzip /etc/d3k

# -------------------
FROM scratch as final
COPY --from=main / /

ARG USERNAME=user
ARG USER_UID=1001
ARG USER_GID=$USER_UID

USER $USERNAME
WORKDIR /home/user/
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    HOME=/home/user \
    PATH=$PATH:/opt/oaf:/opt/oaf/ojobs

ENTRYPOINT ["/bin/sh", "/home/user/.p1.sh"]
