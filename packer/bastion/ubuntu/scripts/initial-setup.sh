#!/bin/bash

# Run inital apt-get update and some base packages
apt-get update
apt-get install -yq \
  wget \
  curl \
  apt-transport-https \
  ca-certificates \
  gnupg \
  vim-tiny
apt-get clean
