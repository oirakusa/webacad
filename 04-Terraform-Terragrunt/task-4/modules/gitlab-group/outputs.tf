output "group_url" {
  description = "created group url"
  value = gitlab_group.example_group.web_url
}

output "group_id" {
  description = "created group id"
  value = gitlab_group.example_group.id
}