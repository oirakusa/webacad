# Create a project in the example group
resource "gitlab_project" "main_project" {
  name                   = "wa-${data.gitlab_group.gitlab_group.name}-proj"
  description            = "An example project"
  namespace_id           = var.gitlab_group_id
  approvals_before_merge = 2
  # push_rules {
  #   prevent_secrets         = true
  #   reject_unsigned_commits = true
  # }
}

# Create a gitlab project access token
resource "gitlab_project_access_token" "project_dev_token" {
  project      = gitlab_project.main_project.id
  name         = "Webacad project access token"
  expires_at   = "2023-09-14"
  access_level = "developer"

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

# Creating gitlab branch protection rules
resource "gitlab_branch_protection" "main" {
  project                = gitlab_project.main_project.id
  branch                 = "main"
  push_access_level      = "maintainer"
  merge_access_level     = "developer"
  unprotect_access_level = "maintainer"
}