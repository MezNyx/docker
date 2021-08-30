#!/bin/bash

# Install tfenv
echo "Installing tfenv and the lastest version of terraform"
git clone https://github.com/tfutils/tfenv.git /workspace/.tfenv

# Install tgenv
echo "Installing tgenv and the lastest version of terragrunt"
git clone https://github.com/cunymatthieu/tgenv.git /workspace/.tgenv
