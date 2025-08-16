resource "helm_release" "opa-gatekeeper" {
  name             = "opa-gatekeeper"
  repository       = "https://open-policy-agent.github.io/gatekeeper/charts"
  chart            = "gatekeeper"
  version          = "3.20.0"
  create_namespace = true
  namespace        = "gatekeeper-system"
  depends_on       = [module.eks, helm_release.prometheus]
}
