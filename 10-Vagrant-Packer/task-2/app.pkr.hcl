packer {
  required_version = ">= 1.9.0, <2.0.0"
  required_plugins {
    vagrant = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/vagrant"
    }
  }
}

source "vagrant" "example-wa" {
  communicator = "ssh"
  source_path  = "ubuntu/jammy64"
  provider     = "virtualbox"
  add_force    = true
}

build {
  name = "wa-test-build"
  sources = ["source.vagrant.example-wa"]
  provisioner "shell" {
    inline = ["sudo apt-get update", "sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common"]
  }
}
