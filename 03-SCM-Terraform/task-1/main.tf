# Configure the GitLab Provider
provider "gitlab" {
  token    = var.gitlab_token
  base_url = var.gitlab_url
}

# Create a project in the example group
resource "gitlab_group" "group" {
  name        = "03-task-1gr1"
  path        = "03-task-1gr1"
  description = "An example group"
}

# Create a project in the example group
resource "gitlab_project" "project" {
  name         = "03-task-1proj1"
  description  = "An example project"
  namespace_id = gitlab_group.group.id
}

# Create a gitlab project access token
resource "gitlab_project_access_token" "example" {
  project      = gitlab_project.project.id
  name         = "Webacad project access token 1"
  expires_at   = "2023-09-14"
  access_level = "developer"

  scopes = ["api"]
}

resource "gitlab_project_variable" "example" {
  project = gitlab_project.project.id
  key     = "pat"
  value   = gitlab_project_access_token.example.token
}