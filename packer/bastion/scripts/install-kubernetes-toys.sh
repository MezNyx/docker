#!/bin/bash

# Install kubectx and kubens
KUBECTX_VERSION=v0.9.1
KUBENS_VERSION=v0.9.1

set -x; cd "$(mktemp -d)" && \
wget -q https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
wget -q https://github.com/ahmetb/kubectx/releases/download/${KUBENS_VERSION}/kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
tar zxvf kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
tar zxvf kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
mv kubens kubectx /usr/bin

# Install k9s
K9S_VERSION=v0.24.2

set -x; cd "$(mktemp -d)" && \
wget -q https://github.com/derailed/k9s/releases/download/v0.24.2/k9s_Linux_x86_64.tar.gz && \
tar zxvf k9s_Linux_x86_64.tar.gz && \
mv k9s /usr/bin

