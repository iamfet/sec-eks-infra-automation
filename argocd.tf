provider "helm" {
  kubernetes = {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)

    exec = {
      api_version = "client.authentication.k8s.io/v1beta1"
      command     = "aws"
      args        = ["eks", "get-token", "--cluster-name", module.eks.cluster_name]
    }
  }
}

resource "helm_release" "argocd" {
  name             = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "8.2.5"
  create_namespace = true
  namespace        = "argocd"
  depends_on       = [module.eks, helm_release.aws-load-balancer-controller]

  values = [
    file("${path.module}/helm-values/argocd.yaml")
  ]
}

# add repo secrets if repo argocd syncs is private
#resource "kubernetes_secret" "argocd_gitops_repo" {
#  depends_on = [helm_release.argocd]
#
#  metadata {
#    name      = "gitops-repo"
#    namespace = "argocd"
#    labels = {
#      "argocd.argoproj.io/secret-type" = "repository" #enable argocd to find the secret to connect to repo
#    }
#  }
#
#
#  data = {
#    type : "git"
#    url : var.gitops_url
#    username : var.gitops_username
#    password : var.gitops_password
#  }
#  type = "Opaque"
#}