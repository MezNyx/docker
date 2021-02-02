#!/bin/bash

# Install Helm
HELM_VERSION=v3.5.1

set -x; cd "$(mktemp -d)" \
&& wget -q https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz \
&& tar zxvf helm-${HELM_VERSION}-linux-amd64.tar.gz \
&& mv linux-amd64/helm /usr/local/bin/helm
