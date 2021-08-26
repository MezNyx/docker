#!/bin/bash

# Install awscli
BUILD_DIR=$(mktemp -d)
trap 'rm -rf ${BUILD_DIR}' EXIT
echo "Using a temporary directory for the build: ${BUILD_DIR}"

cd "${BUILD_DIR}" && \
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
unzip awscliv2.zip && \
./aws/install && \
rm -rf "${BUILD_DIR}"
