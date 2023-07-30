terraform {
  required_version = "1.5.4"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.11.0"
    }
  }
  backend "s3" {
    bucket = "wa-test-bucket1"
    key    = "global/s3/terraform.tfstate"
    region = "eu-north-1"
  }
}