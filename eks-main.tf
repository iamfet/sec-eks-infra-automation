provider "aws" {
  region = var.aws_region
}

#VPC for Cluster
data "aws_availability_zones" "azs" {
  state = "available"
} #queries AWS to provide the names of availability zones dynamically

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 6.0" #6.0

  name            = "${var.project_name}-vpc"
  cidr            = var.vpc_cidr_block
  private_subnets = var.private_subnets_cidr
  public_subnets  = var.public_subnets_cidr
  azs             = data.aws_availability_zones.azs.names

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    "kubernetes.io/cluster/${var.project_name}-eks-cluster" = "shared" # Tags required for EKS to discover subnets
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.project_name}-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                                = 1 # Identifies this subnet for external load balancers
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.project_name}-eks-cluster" = "shared"
    "kubernetes.io/role/internal-elb"                       = 1 # Identifies this subnet for internal services
  }
}

#EKS for Cluster
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.37" #21.0

  cluster_name    = "${var.project_name}-eks-cluster"
  cluster_version = var.cluster_version

  subnet_ids = module.vpc.private_subnets
  vpc_id     = module.vpc.vpc_id

  cluster_endpoint_public_access = true

  # Ensure proper dependency order
  depends_on = [module.vpc, aws_iam_role.external-admin, aws_iam_role.external-developer]

  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {}
    kube-proxy             = {}
    vpc-cni                = {}
    aws-ebs-csi-driver = {
      most_recent                 = true
      resolve_conflicts_on_create = "OVERWRITE"
      service_account_role_arn    = module.ebs_csi_irsa_role.iam_role_arn
    }
  }

  # Set authentication mode to API
  authentication_mode = "API"

  # Adds the current caller identity as an administrator via cluster access entry
  enable_cluster_creator_admin_permissions = true

  # Add access entries
  access_entries = {
    admin = {
      principal_arn = aws_iam_role.external-admin.arn
      type          = "STANDARD"
      access_scope = {
        type = "cluster"
      }
    }

    developer = {
      principal_arn = aws_iam_role.external-developer.arn
      type          = "STANDARD"
      access_scope = {
        type       = "namespace"
        namespaces = ["online-boutique"]
      }
    }
  }

  eks_managed_node_groups = {
    dev = {
      instance_types = ["t2.large"]
      min_size       = 1
      max_size       = 4
      desired_size   = 2

      tags = {
        "k8s.io/cluster-autoscaler/enabled"                         = "true"
        "k8s.io/cluster-autoscaler/${var.project_name}-eks-cluster" = "owned"
      }
    }
  }

  node_security_group_additional_rules = {

    #Enables automatic sidecar injection when pods are created
    ingress_15017 = {
      description                   = "Cluster API to Istio Webhook namespace.sidecar-injector.istio.io"
      protocol                      = "TCP"
      from_port                     = 15017
      to_port                       = 15017
      type                          = "ingress"
      source_cluster_security_group = true
    }

    #Enables service discovery and configuration distribution
    ingress_15012 = {
      description                   = "Cluster API to nodes ports/protocols"
      protocol                      = "TCP"
      from_port                     = 15012
      to_port                       = 15012
      type                          = "ingress"
      source_cluster_security_group = true
    }
  }

  tags = {
    environment = "dev"
    terraform   = true
  }
}

# EBS CSI Driver IRSA
module "ebs_csi_irsa_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "~> 5.59"

  role_name             = "${var.project_name}-ebs-csi"
  attach_ebs_csi_policy = true

  oidc_providers = {
    main = {
      provider_arn               = module.eks.oidc_provider_arn
      namespace_service_accounts = ["kube-system:ebs-csi-controller-sa"]
    }
  }
}