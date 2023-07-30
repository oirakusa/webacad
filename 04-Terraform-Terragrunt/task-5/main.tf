# Configure the GitLab Provider
provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
}

module "gitlab_group" {
  for_each          = toset(var.gitlab_groups_name)
  source            = "./modules/gitlab-group"
  gitlab_group_name = each.key
}

# module "gitlab_project" {
#   source          = "./modules/gitlab-project"
#   gitlab_group_id = module.gitlab_group.group_id
# }