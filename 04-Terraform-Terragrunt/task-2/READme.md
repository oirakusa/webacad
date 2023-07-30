<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.5.4 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 15.11.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gitlab_group"></a> [gitlab\_group](#module\_gitlab\_group) | ./modules/gitlab-group | n/a |
| <a name="module_gitlab_project"></a> [gitlab\_project](#module\_gitlab\_project) | ./modules/gitlab-project | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_group_name"></a> [gitlab\_group\_name](#input\_gitlab\_group\_name) | Group number | `string` | n/a | yes |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | WA gitlab default token | `string` | `sensetive` | no |
| <a name="input_gitlab_url"></a> [gitlab\_url](#input\_gitlab\_url) | Gitlab endpoint url | `string` | `"http://ubuntu-gitlab/api/v4/"` | no |
<!-- END_TF_DOCS -->