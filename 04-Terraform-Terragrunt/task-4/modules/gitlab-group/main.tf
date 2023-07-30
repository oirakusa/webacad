# Create a gitlab group
resource "gitlab_group" "example_group" {
  name        = "wa-${var.gitlab_group_name}"
  path        = "wa-${var.gitlab_group_name}"
  description = "Gitlab group wa-${var.gitlab_group_name}"
  lfs_enabled = var.gitlab_lfs
}

# Create a gitlab group access token
resource "gitlab_group_access_token" "group_rep_token" {
  group        = gitlab_group.example_group.id
  name         = "wa-${var.gitlab_group_name}-rep"
  expires_at   = "2023-09-11"
  access_level = "reporter"

  scopes = ["api"]
}

# Create gitlab group deploy token
resource "gitlab_deploy_token" "group_deploy_token" {
  group = gitlab_group.example_group.id
  name  = "Example group deploy token"

  scopes = ["read_repository"]
}