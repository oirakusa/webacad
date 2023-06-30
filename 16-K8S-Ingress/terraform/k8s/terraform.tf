terraform {
  required_version = "1.5.1"
  backend "consul" {
    address = "http://inst-01.opsua.uno:8500"
    scheme  = "http"
    path    = "10.05/dev/k8s/terraform.tfstate"
    lock = true
  }
  required_providers {
    helm = "2.10.1"
    kubernetes = "2.21.1"
  }
}