resource "helm_release" "external-secrets" {
  name             = "external-secrets"
  repository       = "https://charts.external-secrets.io"
  chart            = "external-secrets"
  version          = "0.19.2"
  create_namespace = true
  namespace        = "external-secrets-system"
  depends_on       = [module.eks, helm_release.aws-load-balancer-controller]

  wait = true

  set_string {
    name  = "serviceAccount.create"
    value = "true"
  }

  set_string {
    name  = "serviceAccount.name"
    value = "external-secrets"
  }

  set_string {
    name  = "serviceMonitor.enabled"
    value = "true"
  }

  set_string {
    name  = "metrics.service.enabled"
    value = "true"
  }
}