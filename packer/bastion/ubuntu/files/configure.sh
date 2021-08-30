#!/bin/bash

# Set up AWS
if [ ! -d /workspace/.aws ]; then
  # yes/no if you want to set up aws
  while true; do
    read -p "Do you want to configure awscli?" yn
    case $yn in
      [Yy]* ) aws configure; break;;
      [Nn]* ) break;;
      * ) echo "Please answer Y/y/N/n";;
    esac
  done
fi

# Log into Google Cloud
if [ ! -d /workspace/.config/gcloud ]; then
  echo "Logging in to Google Cloud"
  gcloud auth login
fi

# Set up Helm
if [ ! -d /workspace/.cache/helm/repository ]; then
  echo "Setting up helm repositories."
  echo "You can manually add more later with the helm command."
  helm repo add hashicorp https://helm.releases.hashicorp.com
  helm repo add fluent https://fluent.github.io/helm-charts
  helm repo add grafana https://grafana.github.io/helm-charts
  helm repo add stable https://charts.helm.sh/stable
  helm repo add incubator https://charts.helm.sh/incubator
  helm repo add bitnami https://charts.bitnami.com/bitnami
  helm repo add argo https://argoproj.github.io/argo-helm
  helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
fi


# Set up tfenv
tfenv install latest
tfenv use latest

# Set up tgenv
tgenv install latest
tgenv use latest
