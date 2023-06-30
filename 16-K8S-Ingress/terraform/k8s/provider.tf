provider "helm" {
  kubernetes {
    host                   = local.k8s.k8s_host
//    cluster_ca_certificate = base64decode(local.k8s_wa_cluster_ca_certificate)
//    token                  = local.wa_token_terraform_service_account
//    load_config_file       = false
    config_path = "/Users/sg/.kube/wa-api-config"
  }
}

provider "kubernetes" {
  host                   = local.k8s.k8s_host
//  cluster_ca_certificate = base64decode("${data.vault_generic_secret.wa_cluster_ca_certificate.data["wa_cluster_ca_certificate"]}")
//  token                  = data.vault_generic_secret.wa_token_terraform_service_account.data["wa_token_terraform_service_account"]
  config_path = "/Users/sg/.kube/wa-api-config"
//  load_config_file       = false
}

#provider "template" {
#}

//provider "vault" {
//  version = "~> 2.18"
//  address = var.vault_address
//}