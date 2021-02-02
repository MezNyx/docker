#!/bin/bash

# Set up Google Cloud SDK Repo
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Install Google Cloud SDK Packages
apt-get update && \
apt-get install -yq \
  google-cloud-sdk \
  kubectl \
  google-cloud-sdk-kubectl-oidc && \
apt-get clean
