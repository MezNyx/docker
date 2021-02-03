#!/bin/bash

# Install Helm
VAULT_VERSION=1.6.2

set -x; cd "$(mktemp -d)" \
&& wget -q https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip \
&& unzip vault_${VAULT_VERSION}_linux_amd64.zip \
&& mv vault /usr/local/bin/vault
