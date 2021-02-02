#!/bin/bash

# Install awscli
apk add --no-cache \
    py3-pip \
&& pip3 install --upgrade pip \
&& pip3 install \
    awscli \
&& rm -rf /var/cache/apk/*

aws --version # Just to make sure it installed right
