ARG UBUNTU_VERSION=20.04
FROM ubuntu:${UBUNTU_VERSION}

# Install dependencies for new apt-get repositories
RUN apt-get update && \
    apt-get install --yes wget curl apt-transport-https ca-certificates gnupg

# Set up apt-get repo keys
RUN curl https://baltocdn.com/helm/signing.asc | apt-key add - && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Set up apt-get repositories
COPY --chown=root:root ./repositories/ /etc/apt/sources.list.d/

# Install needed packages
RUN apt-get update && \
    apt-get upgrade --yes && \
    apt-get install --yes bash helm google-cloud-sdk python3 python3-pip

# Set up a user
RUN addgroup --system bastion && \
    adduser --system --home /workspace --shell /bin/bash bastion

# Install kubectx and kubens
ENV KUBECTX_VERSION=v0.9.1
ENV KUBENS_VERSION=v0.9.1
RUN set -x; cd "$(mktemp -d)" && \
    wget https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
    wget https://github.com/ahmetb/kubectx/releases/download/${KUBENS_VERSION}/kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
    tar zxvf kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
    tar zxvf kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
    mv kubens kubectx /usr/bin

# Install k9s
ENV K9S_VERSION=v0.24.2
RUN set -x; cd "$(mktemp -d)" && \
    wget https://github.com/derailed/k9s/releases/download/v0.24.2/k9s_Linux_x86_64.tar.gz && \
    tar zxvf k9s_Linux_x86_64.tar.gz && \
    mv k9s /usr/bin

# Set up terraform (TBD)

# Install awscli
RUN pip3 install awscli

# Set up login info
WORKDIR /workspace
USER bastion
