resource "helm_release" "nginx_ingress" {
  name       = "ingress-nginx"
  repository = local.ingress.ingress_helm_repository
  chart      = "ingress-nginx"
  version    = local.ingress.helm_ingress_version
  namespace  = kubernetes_namespace.ingress_nginx.metadata[0].name

  values = [
    file("${path.module}/values/nginx_ingress.yaml")
  ]
  depends_on = [kubernetes_namespace.ingress_nginx]
}

#resource "helm_release" "nginx_ingress_internal" {
#  name       = "nginx"
#  repository = local.ingress.nginx_helm_repository
#  chart      = "nginx"
#  version    = local.ingress.helm_nginx_version
#  namespace  = kubernetes_namespace.nginx.metadata.name
#
#  values = [
#    file("${path.module}/values/nginx_ingress_internal.yaml")
#  ]
#  depends_on = [kubernetes_namespace.nginx]
#}