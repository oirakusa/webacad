# Configure the GitLab Provider
provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
}

module "gitlab_group" {
  source            = "./modules/gitlab-group"
  gitlab_group_name = var.gitlab_group_name
}

module "gitlab_project" {
  source          = "./modules/gitlab-project"
  gitlab_group_id = module.gitlab_group.group_id
}