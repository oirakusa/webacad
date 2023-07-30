# Configure the GitLab Provider
provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
}

# Create a gitlab group
resource "gitlab_group" "example_group" {
  name        = "wa-${var.gitlab_group_number}"
  path        = "wa-${var.gitlab_group_number}"
  description = "Gitlab group wa-${var.gitlab_group_number}"
  lfs_enabled = var.gitlab_lfs
}

# Create a project in the example group
resource "gitlab_project" "main_project" {
  name                   = "wa-${var.gitlab_group_number}-proj"
  description            = "An example project"
  namespace_id           = gitlab_group.example_group.id
  approvals_before_merge = 2
  push_rules {
    prevent_secrets         = true
    reject_unsigned_commits = true
  }
}

# Create a gitlab project access token
resource "gitlab_project_access_token" "project_dev_token" {
  project      = gitlab_project.main_project.id
  name         = "Webacad project access token"
  expires_at   = "2023-09-14"
  access_level = "developer"

  scopes = ["api"]
}

# Create a gitlab group access token
resource "gitlab_group_access_token" "group_rep_token" {
  group        = gitlab_group.example_group.id
  name         = "Webacad group access token"
  expires_at   = "2023-09-11"
  access_level = "reporter"

  scopes = ["api"]
}

# Create gitlab project variable
resource "gitlab_project_variable" "example" {
  project = gitlab_project.main_project.id
  key     = "pat"
  value   = gitlab_project_access_token.project_dev_token.token
}

# Create gitlab project deploy token
resource "gitlab_deploy_token" "project_deploy_token" {
  project    = gitlab_project.main_project.id
  name       = "Project deploy token"
  username   = "test-username"
  expires_at = "2023-09-14T00:00:00.000Z"

  scopes = ["read_repository", "read_registry"]
}


# Create gitlab group deploy token
resource "gitlab_deploy_token" "group_deploy_token" {
  group = gitlab_group.example_group.id
  name  = "Example group deploy token"

  scopes = ["read_repository"]
}

# Creating gitlab branch protection rules
resource "gitlab_branch_protection" "main" {
  project                = gitlab_project.main_project.id
  branch                 = "main"
  push_access_level      = "maintainer"
  merge_access_level     = "developer"
  unprotect_access_level = "maintainer"
}