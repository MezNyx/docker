#!/bin/bash

# Run inital upgrade and some base packages
dnf upgrade -y
dnf install -y \
  git \
  tar \
  openssl \
  wget \
  python3 \
  python3-pip \
  unzip
dnf clean all
