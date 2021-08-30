#!/bin/bash

# Run inital upgrade and some base packages
dnf upgrade
dnf install -yq \
  git \
  tar \
  openssl \
  wget \
  unzip
dnf clean all
