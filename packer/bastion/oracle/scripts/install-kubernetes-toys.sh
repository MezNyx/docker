#!/bin/bash

# Install kubectx and kubens
KUBECTX_VERSION=v0.9.4
KUBENS_VERSION=v0.9.4

BUILD_DIR_CTX=$(mktemp -d)
trap 'rm -rf ${BUILD_DIR_CTX}' EXIT
echo "Using a temporary directory for the kubectx build: ${BUILD_DIR_CTX}"

cd "${BUILD_DIR_CTX}" && \
wget -q https://github.com/ahmetb/kubectx/releases/download/${KUBECTX_VERSION}/kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
wget -q https://github.com/ahmetb/kubectx/releases/download/${KUBENS_VERSION}/kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
tar zxvf kubectx_${KUBECTX_VERSION}_linux_x86_64.tar.gz && \
tar zxvf kubens_${KUBENS_VERSION}_linux_x86_64.tar.gz && \
mv kubens kubectx /usr/bin && \
rm -rf "${BUILD_DIR_CTX}"

# Install k9s
K9S_VERSION=v0.24.15

BUILD_DIR_K9S=$(mktemp -d)
trap 'rm -rf ${BUILD_DIR_K9S}' EXIT
echo "Using a temporary directory for the k9s build: ${BUILD_DIR_K9S}"

cd "${BUILD_DIR_K9S}" && \
wget -q https://github.com/derailed/k9s/releases/download/${K9S_VERSION}/k9s_Linux_x86_64.tar.gz && \
tar zxvf k9s_Linux_x86_64.tar.gz && \
mv k9s /usr/bin && \
rm -rf "${BUILD_DIR_K9S}"

# Install kubeswitch
OS=linux                        # Pick the right os: linux, darwin (intel only)
VERSION=0.4.7                   # Pick the current version.

curl -L -o /usr/local/bin/switcher https://github.com/danielfoehrKn/kubeswitch/releases/download/${VERSION}/switcher_${OS}_amd64
chmod +x /usr/local/bin/switcher 

curl -L -o  /usr/local/bin/switch.sh https://github.com/danielfoehrKn/kubeswitch/releases/download/${VERSION}/switch.sh
chmod +x /usr/local/bin/switch.sh
