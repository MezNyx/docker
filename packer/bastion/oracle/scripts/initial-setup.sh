#!/bin/bash

# Run inital upgrade and some base packages
dnf upgrade
dnf install -yq \
  tar \
  openssl \
  wget \
  unzip
dnf clean all
