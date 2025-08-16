resource "helm_release" "prometheus" {
  name             = "kube-prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  version          = "76.4.0"
  create_namespace = true
  namespace        = "monitoring"
  depends_on       = [helm_release.istiod, helm_release.cert_manager]
  values = [
    file("${path.module}/helm-values/prometheus.yaml")
  ]
}