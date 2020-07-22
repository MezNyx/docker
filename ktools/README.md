# Kubernetes Tools

This docker image has the google/cloud-sdk base with kubectx and kubens
kubernetes plugins.

Helm is also installed via an "unsupported" repository according to helm.sh
so please use it with caution.

## Some sample aliases that may help

```Shell
alias mkubectl='docker run --rm -v ${HOME}/.kube:/root/.kube -v ${HOME}/.config:/root/.config meznyx/ktools kubectl'

alias mkubectx='docker run --rm -v ${HOME}/.kube:/root/.kube -v ${HOME}/.config:/root/.config meznyx/ktools kubectx'

alias mkubens='docker run --rm -v ${HOME}/.kube:/root/.kube -v ${HOME}/.config:/root/.config meznyx/ktools kubens'

alias mhelm='docker run --rm -v ${HOME}/.kube:/root/.kube -v ${HOME}/.config:/root/.config -v $(pwd):/workspace -w /workspace meznyx/ktools helm'
```
