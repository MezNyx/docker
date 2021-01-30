#!/bin/bash

# Set up helm repo
curl https://baltocdn.com/helm/signing.asc | apt-key add - && \
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list

# Install helm package
apt-get update && \
apt-get install -yq helm && \
apt-get clean
