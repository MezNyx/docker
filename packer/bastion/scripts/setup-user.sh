#!/bin/bash

# Set up the user and group
addgroup --system bastion && \
adduser --system --home /workspace --shell /bin/bash bastion
