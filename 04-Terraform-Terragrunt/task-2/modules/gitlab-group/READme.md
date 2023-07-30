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
| [gitlab_deploy_token.group_deploy_token](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/deploy_token) | resource |
| [gitlab_group.example_group](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/group) | resource |
| [gitlab_group_access_token.group_rep_token](https://registry.terraform.io/providers/gitlabhq/gitlab/15.11.0/docs/resources/group_access_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_group_name"></a> [gitlab\_group\_name](#input\_gitlab\_group\_name) | Group name | `string` | n/a | yes |
| <a name="input_gitlab_lfs"></a> [gitlab\_lfs](#input\_gitlab\_lfs) | Set lfs for gitlab group | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_id"></a> [group\_id](#output\_group\_id) | created group id |
| <a name="output_group_url"></a> [group\_url](#output\_group\_url) | created group url |
<!-- END_TF_DOCS -->