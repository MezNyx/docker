#!/bin/bash

# Run inital apt-get update and some base packages
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -yq \
  git \
  wget \
  unzip \
  curl \
  apt-transport-https \
  ca-certificates \
  gnupg \
  vim-tiny
apt-get clean
