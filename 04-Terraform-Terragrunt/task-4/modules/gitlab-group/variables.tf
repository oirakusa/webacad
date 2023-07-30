variable "gitlab_group_name" {
  description = "Group name"
  type        = string
}

variable "gitlab_lfs" {
  description = "Set lfs for gitlab group"
  type        = bool
  default     = false
}