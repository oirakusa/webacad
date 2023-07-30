variable "gitlab_token" {
  description = "WA gitlab default token"
  type        = string
  sensitive   = true
  default     = "glpat-NtJV4HBHxUPdTE8GMrX5"
}

variable "gitlab_url" {
  description = "Gitlab endpoint url"
  type        = string
  default     = "http://ubuntu-gitlab/api/v4/"
}

variable "gitlab_group_name" {
  description = "Group number"
  type        = string
}
