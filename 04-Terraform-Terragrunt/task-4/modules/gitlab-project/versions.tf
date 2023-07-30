terraform {
  required_version = "1.5.4"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "15.11.0"
    }
  }
}