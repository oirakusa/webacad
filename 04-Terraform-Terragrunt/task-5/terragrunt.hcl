generate "backend" {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
    terraform {
        backend "s3" {
            bucket = "wa-${get_env("TF_ENV_TYPE")}-bucket1"
            key    = "global/s3/terraform.tfstate"
            region = "eu-north-1"
        }
    }
EOF
}
generate "provider" {
    path = "provider.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF
    terraform {
        required_providers {
            gitlab = {
                source  = "gitlabhq/gitlab"
                version = "15.11.0"
            }
        }
    }
EOF
}
terraform {
    extra_argments "common vars" {
        commands = ["plan", "apply"]
        required_var_file = [
            "./enviroinments/${get_env("TF_ENV_TYPE")}.tfvars"
        ]
    }
}