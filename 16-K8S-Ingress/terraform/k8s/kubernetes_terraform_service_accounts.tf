//resource "kubernetes_service_account" "vault" {
//  metadata {
//    name      = "vault"
//    namespace = "kube-system"
//  }
//}
//
//resource "kubernetes_cluster_role_binding" "vault" {
//  metadata {
//    name = kubernetes_service_account.vault.metadata.0.name
//    labels = {
//      app = kubernetes_service_account.vault.metadata.0.name
//    }
//  }
//  role_ref {
//    api_group = "rbac.authorization.k8s.io"
//    kind      = "ClusterRole"
//    name      = "cluster-admin"
//  }
//  subject {
//    kind      = "ServiceAccount"
//    name      = kubernetes_service_account.vault.metadata.0.name
//    namespace = "kube-system"
//  }
//  depends_on = [
//    kubernetes_service_account.vault
//  ]
//}
