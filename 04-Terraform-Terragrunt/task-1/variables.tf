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

variable "gitlab_group_number" {
  description = "Group number"
  type        = number
  default     = 112312
}

variable "gitlab_lfs" {
  description = "Set lfs for gitlab group"
  type        = bool
  default     = false
}