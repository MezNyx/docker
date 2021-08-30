source "docker" "bastion" {
  image = "oraclelinux:8.4"
  commit = true
  pull = true
    changes = [
    "USER bastion",
    "WORKDIR /workspace",
    "ENV HOSTNAME bastion",
    "LABEL version=1.1",
    "ONBUILD RUN date",
    "ENTRYPOINT [\"/bin/bash\"]"
  ]
}

build {
  name = "bastion"
  sources = ["source.docker.bastion"]
  provisioner "shell" {
    script = "scripts/initial-setup.sh"
  }
  provisioner "shell" {
    script = "scripts/install-helm.sh"
  }
  provisioner "shell" {
    script = "scripts/install-google-cloud-sdk.sh"
  }
  provisioner "shell" {
    script = "scripts/install-kubernetes-toys.sh"
  }
  provisioner "shell" {
    script = "scripts/install-eks-tools.sh"
  }
  provisioner "shell" {
    script = "scripts/install-awscli.sh"
  }
  provisioner "shell" {
    script = "scripts/setup-user.sh"
  }
  provisioner "shell" {
    script = "scripts/install-tf-tools.sh"
  }
  provisioner "file" {
    source = "files/configure.sh"
    destination = "/workspace/configure.sh"
  }
  provisioner "shell" {
    inline = ["chmod +x /workspace/configure.sh"]
  }
  provisioner "file" {
    source = "files/bashrc"
    destination = "/workspace/.bashrc"
  }
  provisioner "shell" {
    inline = ["chown -R bastion:bastion /workspace"]
  }
  post-processors {
    post-processor "docker-tag" {
      repository = "meznyx/bastion"
      tags = ["1.0-oracle", "oracle"]
    }
    post-processor "docker-push" {}
  
  }
}