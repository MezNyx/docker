#!/bin/bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
echo "deb [arch=amd64] https://apt.releases.hashicorp.com focal main" | tee -a /etc/apt/sources.list.d/hashicorp.list
apt-get update && apt-get -yq install vault
