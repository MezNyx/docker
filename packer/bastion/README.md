Bastion:
  * Oracle Linux 8
  * Ubuntu 20.04


This is a bastion I have set up using packer which provides the following applications within
* google-cloud-sdk
* awscli
* helm
* kubectx
* kubens
* kubeswtich
* k9s
* tfenv
* tgenv
* vault

Example Usage:
```
# Simple
docker run -it --cap-add=CAP_IPC_LOCK meznyx/bastion:latest

# More in Depth (this assumes you have a .config, .kube, and .aws folder to mount)
docker run -t -d -v /path/to/.config:/workspace/.config -v /path/to/.aws:/workspace/.aws -v /path/to/.kube:/workspace/.kube --cap-add=CAP_IPC_LOCK --name bastion meznyx/bastion:oracle'
```

Helpful Bash/Zsh Aliases:
```
bastion='docker exec -it bastion bash'
bastion-rm='docker rm bastion'
bastion-run='docker run -t -d -v /path/to/.config:/workspace/.config -v /path/to/.aws:/workspace/.aws -v /path/to/.kube:/workspace/.kube --cap-add=CAP_IPC_LOCK --name bastion meznyx/bastion:oracle'
bastion-stop='docker stop bastion'
```

NOTE: The reason for the --cap-add=CAP_IPC_LOCK is because without it, vault will not run on the command line within the shell of the docker image: https://github.com/hashicorp/vault/issues/10924

TODO: Soon I will be doing explicit versioning of these which will include getting rid of tfenv and tgenv and having a specific version of terraform and terragrunt.
