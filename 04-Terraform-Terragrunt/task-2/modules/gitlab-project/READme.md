<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.5.4 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 15.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 15.11.0 |

## Resources

| Name | Type |
|------|------|
| [gitlab_branch_protection.main](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/branch_protection) | resource |
| [gitlab_deploy_token.project_deploy_token](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/deploy_token) | resource |
| [gitlab_project.main_project](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/project) | resource |
| [gitlab_project_access_token.project_dev_token](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/project_access_token) | resource |
| [gitlab_project_variable.example](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/project_variable) | resource |
| [gitlab_group.gitlab_group](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_group_id"></a> [gitlab\_group\_id](#input\_gitlab\_group\_id) | Group id | `number` | n/a | yes |
<!-- END_TF_DOCS -->