#!/bin/bash

# Install kubectx and kubens
KUBECTX_VERSION=v0.9.1
KUBENS_VERSION=v0.9.1

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
K9S_VERSION=v0.24.2

BUILD_DIR_K9S=$(mktemp -d)
trap 'rm -rf ${BUILD_DIR_K9S}' EXIT
echo "Using a temporary directory for the k9s build: ${BUILD_DIR_K9S}"

cd "${BUILD_DIR_K9S}" && \
wget -q https://github.com/derailed/k9s/releases/download/${K9S_VERSION}/k9s_Linux_x86_64.tar.gz && \
tar zxvf k9s_Linux_x86_64.tar.gz && \
mv k9s /usr/bin && \
rm -rf "${BUILD_DIR_K9S}"

