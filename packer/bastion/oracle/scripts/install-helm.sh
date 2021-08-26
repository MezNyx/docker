#!/bin/bash

BUILD_DIR_HELM=$(mktemp -d)
trap 'rm -rf ${BUILD_DIR_HELM}' EXIT
echo "Using a temporary directory for the helm build: ${BUILD_DIR_HELM}"

cd "${BUILD_DIR_HELM}" && \
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh && \
./get_helm.sh && \
rm -rf "${BUILD_DIR_HELM}"
