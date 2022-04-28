#!/bin/bash

# Set up the user and group
addgroup --system --gid 1000 bastion && \
adduser --system --uid 1000 --home /workspace --shell /bin/bash bastion
