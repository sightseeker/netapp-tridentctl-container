FROM centos:7.6.1810

ARG TRIDENT_VERSION='19.01.0'

RUN curl -L https://github.com/NetApp/trident/releases/download/v${TRIDENT_VERSION}/trident-installer-${TRIDENT_VERSION}.tar.gz -o trident-installer.tar.gz \
  && tar zxf trident-installer.tar.gz -C /usr/local/lib \
  && rm -f trident-installer.tar.gz \
  && ln -s /usr/local/lib/trident-installer/tridentctl /usr/local/bin/tridentctl

COPY files/kubernetes.repo /etc/yum.repos.d/kubernetes.repo

RUN yum install -y kubectl-1.11.10-0.x86_64

WORKDIR /opt/trident

ENTRYPOINT ["/usr/local/bin/tridentctl"]
