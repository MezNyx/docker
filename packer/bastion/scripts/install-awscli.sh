#!/bin/bash

# Install awscli (and the ton of deps it comes with)
export DEBIAN_FRONTEND=noninteractive
apt-get update && \
apt-get install -yq awscli && \
apt-get clean
