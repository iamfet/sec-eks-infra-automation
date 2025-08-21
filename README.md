 **🔒 Security-First DevSecOps Platform**

## 🎯 Overview

Complete **DevSecOps platform** on Amazon EKS featuring zero-trust security, automated secrets management, policy-as-code enforcement, GitOps deployment, and comprehensive monitoring - all managed through infrastructure-as-code with Terraform.

## 🏗️ Architecture Components

| Layer | Components | Purpose |
|-------|------------|----------|
| **🌐 Edge Security** | Route53, Let's Encrypt, AWS NLB | DNS, certificates, and secure ingress |
| **🛡️ Service Mesh** | Istio, Envoy Proxy | Zero-trust networking with mTLS |
| **🔒 Security Controls** | OPA Gatekeeper, cert-manager | Policy enforcement and certificate automation |
| **🗝️ Secrets Management** | Vault, External Secrets, KMS | Centralized secrets with encryption |
| **🚀 GitOps** | ArgoCD | Continuous deployment and configuration management |
| **📊 Observability** | Prometheus, Grafana | Monitoring, alerting, and dashboards |
| **☁️ Infrastructure** | EKS, VPC, IAM | Managed Kubernetes with AWS integration |

## 📐 System Architecture

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                                🌐 Internet                                      │
└─────────────────────────┬───────────────────────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────────────────────┐
│                    🌐 AWS Route53 + Let's Encrypt                              │
│                 (DNS + TLS Certificate Management)                             │
└─────────────────────────┬───────────────────────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────────────────────┐
│                🚪 AWS Load Balancer Controller                                  │
│                    (Secure Ingress + TLS Termination)                          │
└─────────────────────────┬───────────────────────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────────────────────┐
│                      🛡️ Istio Service Mesh                                     │
│  ┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐                  │
│  │   🚀 ArgoCD     │ │  📊 Grafana     │ │ 🛒 Online       │                  │
│  │   (GitOps)      │ │  (Monitoring)   │ │   Boutique      │                  │
│  │                 │ │                 │ │   (Demo App)    │                  │
│  └─────────────────┘ └─────────────────┘ └─────────────────┘                  │
│           │                    │                    │                          │
│           └────────────────────┼────────────────────┘                          │
│                               │                                                │
│  ┌─────────────────────────────▼─────────────────────────────┐                 │
│  │              🔐 mTLS Encrypted Communication               │                 │
│  │         (Zero-Trust Network Security)                     │                 │
│  └─────────────────────────────────────────────────────────┘                 │
└─────────────────────────────────────────────────────────────────────────────────┘
                          │
┌─────────────────────────▼───────────────────────────────────────────────────────┐
│                    🛡️ EKS Secure Cluster                                       │
│  ┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐                  │
│  │ ⚖️ OPA Gatekeeper│ │ 🗝️ Vault        │ │ 🔐 External     │                  │
│  │ (Policy Engine) │ │ (Secrets Mgmt)  │ │   Secrets       │                  │
│  └─────────────────┘ └─────────────────┘ └─────────────────┘                  │
│                          │                         │                          │
│  ┌─────────────────┐     │     ┌─────────────────┐ │                          │
│  │ 🏆 Cert-Manager │     │     │ 📊 Prometheus   │ │                          │
│  │ (TLS Certs)     │     │     │ (Metrics)       │ │                          │
│  └─────────────────┘     │     └─────────────────┘ │                          │
└───────────────────────────┼─────────────────────────┼──────────────────────────┘
                           │                         │
┌─────────────────────────▼─────────────────────────▼──────────────────────────┐
│                        🔑 AWS Services                                        │
│  ┌─────────────────┐ ┌─────────────────┐ ┌─────────────────┐                │
│  │   🔐 KMS        │ │  🗄️ Secrets     │ │  👤 IAM/Pod ID  │                │
│  │ (Encryption)    │ │   Manager       │ │ (Identity)      │                │
│  └─────────────────┘ └─────────────────┘ └─────────────────┘                │
└─────────────────────────────────────────────────────────────────────────────┘
```

### **🔒 Security Layers**

1. **🌐 Edge Security** - Route53 DNS + Let's Encrypt certificates
2. **🚪 Ingress Security** - AWS Load Balancer with TLS termination
3. **🛡️ Service Mesh Security** - Istio mTLS + authorization policies
4. **⚖️ Policy Security** - OPA Gatekeeper admission control
5. **🗝️ Secrets Security** - Vault + External Secrets + KMS encryption
6. **🔐 Identity Security** - Pod Identity + RBAC + service accounts
7. **📊 Observability Security** - Comprehensive monitoring + audit logging

## ✨ Key Features

### **🚀 Automation & DevOps**
- **Infrastructure as Code** - Complete Terraform automation
- **GitOps Deployment** - ArgoCD continuous delivery
- **Auto-Scaling** - Cluster Autoscaler for dynamic node management
- **CI/CD Integration** - GitHub Actions workflows with security scanning

### **🔒 Security & Compliance**
- **Zero-Trust Architecture** - Istio service mesh with mTLS encryption
- **Policy as Code** - OPA Gatekeeper constraint templates and runtime enforcement
- **Secrets Management** - HashiCorp Vault with KMS auto-unsealing
- **Certificate Automation** - Let's Encrypt + cert-manager integration
- **Fine-Grained RBAC** - EKS API access entries with namespace-level permissions
- **Restricted Cluster Access** - Only users configured in access entries can access the EKS cluster
- **IAM Role Management** - External admin and developer roles with least-privilege access

### **📊 Monitoring & Observability**
- **Metrics & Dashboards** - Prometheus and Grafana stack
- **Service Mesh Observability** - Istio distributed tracing
- **Audit Logging** - Comprehensive security audit trail
- **Proactive Alerting** - Automated alert management

### **🔐 AWS Integration**

#### **Pod Identity (Successor to IRSA)**
Secure, credential-free AWS service authentication:

| Service | AWS Permissions | Purpose |
|---------|-----------------|----------|
| **Vault** | KMS encrypt/decrypt | Auto-unsealing via dedicated KMS key |
| **External Secrets** | Secrets Manager read | Secure secret retrieval from AWS |
| **Load Balancer Controller** | ALB/NLB management | Ingress controller operations |
| **Cluster Autoscaler** | EC2 Auto Scaling | Node scaling operations |
| **cert-manager** | Route53 DNS validation | SSL certificate automation |

**Benefits**: No long-lived credentials, automatic rotation, least privilege, audit trail, namespace isolation

#### **External IAM Roles**
Least-privilege access management:

| Role | Access Level | Can Be Assumed By |
|------|-------------|-------------------|
| **external-admin** | Cluster-wide admin | `user_for_admin_role` variable |
| **external-developer** | Namespace-restricted | `user_for_dev_role` variable |

## 🛠️ Technology Stack

| Category | Technologies | Purpose |
|----------|-------------|----------|
| **Cloud Platform** | AWS EKS, Route53, KMS, Secrets Manager, IAM | Managed Kubernetes and AWS services |
| **Infrastructure** | Terraform, Helm, GitHub Actions | Infrastructure as Code and automation |
| **Security** | Vault (KMS auto-unsealing), OPA Gatekeeper, Istio, cert-manager | Secrets, policies, service mesh, certificates |
| **Monitoring** | Prometheus, Grafana | Metrics collection and visualization |
| **GitOps** | ArgoCD, Git | Continuous deployment and version control |

## 📁 Repository Structure

```
eks-secure-infra-automation/
├── 📁 .github/
│   └── 📁 workflows/
│       ├── bootstrap-backend.yaml      # Terraform backend setup
│       ├── deploy-infrastructure.yaml  # Infrastructure deployment
│       └── destroy-infrastructure.yaml # Infrastructure cleanup
├── 📁 argocd-apps/
│   ├── cluster-resources-argo-app.yaml # Cluster resources ArgoCD app
│   ├── defectdojo-argo-app.yaml        # DefectDojo ArgoCD app
│   └── online-boutique-argo-app.yaml   # Demo application ArgoCD app
├── 📁 backend/
│   ├── .gitignore                      # Backend-specific ignores
│   ├── main.tf                         # Terraform state backend
│   └── outputs.tf                      # Backend outputs
├── 📁 helm-values/
│   ├── argocd.yaml                     # ArgoCD Helm values
│   ├── istio-gateway.yaml              # Istio Gateway configuration
│   ├── prometheus.yaml                 # Prometheus + Grafana values
│   └── vault.yaml                      # Vault Helm values
├── .gitignore                          # Git ignore patterns
├── argocd.tf                           # ArgoCD deployment
├── aws-load-balancer-controller.tf     # AWS Load Balancer Controller
├── cert-manager.tf                     # Certificate Manager
├── cluster-autoscaler.tf               # Cluster Autoscaler
├── eks-main.tf                         # EKS cluster configuration
├── external-secrets.tf                 # External Secrets Operator
├── iam-roles.tf                        # IAM roles and policies
├── istio.tf                            # Istio service mesh
├── kube-resources.tf                   # Kubernetes resources
├── LICENSE                             # Project license
├── metrics-server.tf                   # Metrics Server
├── opa-gatekeeper.tf                   # OPA Gatekeeper
├── outputs.tf                          # Terraform outputs
├── prometheus.tf                       # Prometheus + Grafana
├── providers.tf                        # Terraform providers
├── README.md                           # This documentation
├── variables.tf                        # Input variables
└── vault.tf                            # HashiCorp Vault
```

### **📂 Directory Breakdown**

| Directory/File | Purpose | Description |
|----------------|---------|-------------|
| **`.github/workflows/`** | CI/CD Pipelines | GitHub Actions for automated deployment |
| **`argocd-apps/`** | GitOps Applications | ArgoCD application definitions |
| **`backend/`** | State Management | Terraform remote state configuration |
| **`helm-values/`** | Configuration | Centralized Helm chart values |
| **`*.tf`** | Infrastructure | Terraform modules for each component |
| **`variables.tf`** | Configuration | Input variables and defaults |
| **`outputs.tf`** | Exports | Terraform output values |
| **`providers.tf`** | Providers | Terraform provider configurations |

### **🚀 Infrastructure Modules**

| Module | Component | Purpose |
|--------|-----------|----------|
| `eks-main.tf` | EKS Cluster | Core Kubernetes cluster with node groups |
| `istio.tf` | Service Mesh | Zero-trust networking with mTLS |
| `vault.tf` | Secrets Management | Centralized secrets with KMS integration |
| `prometheus.tf` | Monitoring Stack | Metrics collection and visualization |
| `argocd.tf` | GitOps Engine | Continuous deployment automation |
| `cert-manager.tf` | Certificate Management | Automated TLS certificate lifecycle |
| `opa-gatekeeper.tf` | Policy Engine | Runtime policy enforcement |
| `external-secrets.tf` | AWS Integration | Secure secrets synchronization |

### **🚪 AWS Load Balancer Controller**

Configured for high availability with Network Load Balancer (NLB) integration:

- **High Availability**: Multi-replica deployment with pod anti-affinity
- **Pod Identity**: Secure AWS API access without long-lived credentials
- **NLB Integration**: Layer 4 load balancing with direct pod IP targeting
- **Istio Gateway**: Seamless service mesh ingress integration

## 📋 Prerequisites

> **⚠️ Important**: Ensure all prerequisites are met before deployment to avoid issues.

### **☁️ AWS Requirements**
- **AWS Account** - Active AWS account with appropriate permissions
- **AWS CLI** - Version 2.x installed and configured
  ```bash
  aws configure
  aws sts get-caller-identity  # Verify credentials
  ```
- **GitHub Actions OIDC Role** - Must be created manually for GitHub Actions authentication
- **AWS Users** - Admin and developer users must exist (referenced in ADMIN_USER_ARN and DEV_USER_ARN)

> **Note**: All other IAM roles and permissions are automatically created by Terraform

### **🏗️ Infrastructure Tools**
- **Terraform** - Version >= 1.5
  ```bash
  terraform --version
  ```
- **kubectl** - Kubernetes command-line tool
  ```bash
  kubectl version --client
  ```
- **Helm** - Version >= 3.0 (optional, for manual operations)
  ```bash
  helm version
  ```

### **🌐 Domain and DNS**
- **Route53 Hosted Zone** - Domain configured in AWS Route53
  - Example: `fetdevops.com`
  - Ensure NS records are properly configured
  - Verify domain ownership and DNS resolution

### **🔐 Security Prerequisites**
- **GitHub Repository** - For GitOps workflow
  - Repository access credentials
  - Personal Access Token (PAT) or SSH keys
- **TLS Certificates** - Let's Encrypt will be used (automated)
- **KMS Key** - Will be created automatically for Vault unsealing

## ⚙️ Required Variables

### **Required Variables**
These variables are configured via GitHub Secrets for automated deployment:

> **⚠️ Important**: AWS users must be created in your AWS account before deploying the infrastructure.

| Variable | GitHub Secret | Description | Example |
|----------|---------------|-------------|----------|
| `user_for_admin_role` | `ADMIN_USER_ARN` | ARN of AWS user for admin access | `arn:aws:iam::123456789012:user/admin` |
| `user_for_dev_role` | `DEV_USER_ARN` | ARN of AWS user for developer access | `arn:aws:iam::123456789012:user/developer` |

### **Optional Variables with Defaults**

| Variable | Default | Description |
|----------|---------|-------------|
| `project_name` | `carney-shop` | Project identifier |
| `aws_region` | `us-east-1` | AWS deployment region |
| `kubernetes_version` | `1.33` | EKS cluster version |
| `vpc_cidr_block` | `10.0.0.0/16` | VPC CIDR block |
| `private_subnets_cidr` | `["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]` | Private subnet CIDRs |
| `public_subnets_cidr` | `["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]` | Public subnet CIDRs |
| `environment` | `dev` | Environment name |

## 🚀 Quick Start

### **Automated Deployment**
```bash
# Clone and setup
git clone https://github.com/iamfet/sec-eks-infra-automation.git
cd sec-eks-infra-automation

# Configure GitHub Secrets (see GitHub Actions CI/CD section)
# Required: ADMIN_USER_ARN, DEV_USER_ARN, ACTIONS_AWS_ROLE_ARN, AWS_REGION

# Trigger automated deployment (GitHub Actions triggered by .tf file changes only)
echo "# Trigger deployment" >> variables.tf
git add variables.tf
git commit -m "Trigger infrastructure deployment"
git push origin main
# GitHub Actions will automatically deploy when .tf files are modified
```

## 🚀 Detailed Deployment Instructions

### **Step 1: Environment Setup**

1. **Clone the repository**
   ```bash
   git clone https://github.com/iamfet/sec-eks-infra-automation.git
   cd sec-eks-infra-automation
   ```

2. **Set environment variables**
   ```bash
   export AWS_REGION=us-east-1
   export PROJECT_NAME=carney-shop
   ```

3. **Verify AWS credentials**
   ```bash
   aws sts get-caller-identity
   aws iam list-attached-role-policies --role-name <your-role>
   ```

### **Step 2: Configure GitHub Secrets**

Configure required GitHub Secrets and Variables (see GitHub Actions CI/CD section for complete list)

### **Step 3: Backend Setup (First Time Only)**

1. **Bootstrap backend via GitHub Actions**
   - Go to Actions tab in GitHub repository
   - Run "Bootstrap Backend" workflow
   - Type "create" when prompted to confirm
   - GitHub Actions will automatically create S3 bucket and DynamoDB table

### **Step 4: Infrastructure Deployment**

1. **Trigger automated deployment**
   ```bash
   # Make any change to .tf files to trigger GitHub Actions
   echo "# Deploy infrastructure" >> variables.tf
   git add variables.tf
   git commit -m "Deploy infrastructure"
   git push origin main
   ```

2. **Monitor deployment**
   - GitHub Actions will automatically deploy infrastructure
   - Check Actions tab for deployment progress
   - Deployment includes cluster verification and ArgoCD app installation

### **Step 5: Post-Deployment Verification**

1. **Configure kubectl access**
   ```bash
   aws eks update-kubeconfig --region us-east-1 --name carney-shop-eks-cluster
   ```

2. **Verify deployment status**
   ```bash
   kubectl get nodes
   kubectl get pods --all-namespaces
   ```

**Note**: GitHub Actions automatically:
- Verifies cluster deployment
- Installs ArgoCD applications
- Validates all pods are running
- Configures GitOps workflow

## 🌐 Service Access

### **🔧 Development Access (Port-Forward)**

**For testing without domain configuration:**

| Service | Port Forward Command | Access URL | Credentials |
|---------|---------------------|------------|-------------|
| **ArgoCD** | `kubectl port-forward svc/argocd-server -n argocd 8080:443` | https://localhost:8080 | admin / `kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" \| base64 -d` |
| **Grafana** | `kubectl port-forward svc/kube-prometheus-stack-grafana -n monitoring 3000:80` | http://localhost:3000 | admin / `kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath="{.data.admin-password}" \| base64 -d` |
| **Vault** | `kubectl port-forward svc/vault -n vault 8200:8200` | http://localhost:8200 | Initialize: `kubectl exec -n vault vault-0 -- vault operator init` |
| **Prometheus** | `kubectl port-forward svc/kube-prometheus-stack-prometheus -n monitoring 9090:9090` | http://localhost:9090 | No authentication required |

## 🔐 AWS OIDC Configuration

**AWS OIDC Configuration**: Configure AWS OIDC provider for GitHub Actions to assume roles without storing AWS credentials in GitHub

> **⚠️ Important**: This must be configured before running any GitHub Actions workflows.

## 🚀 GitHub Actions CI/CD

### **Automated Workflows**

The repository includes three GitHub Actions workflows for complete infrastructure lifecycle management:

### **1. Bootstrap Backend (`bootstrap-backend.yaml`)**

**Purpose**: Sets up Terraform remote state backend (S3 with native state lock)

**Trigger**: Manual with confirmation (`workflow_dispatch`)

**Key Features**:
- ⚠️ **Confirmation Required** - Must type "create" to proceed
- 🗄️ **S3 Backend Setup** - Creates remote state storage
- 🔒 **State Locking** - Prevents concurrent Terraform runs

### **2. Deploy Infrastructure (`deploy-infrastructure.yaml`)**

**Purpose**: Validates, plans, and deploys the complete DevSecOps platform

**Triggers**:
- **Push to main** - Automatic deployment
- **Pull Request** - Validation and planning only

**Pipeline Stages**:

#### **Stage 1: Validation**
- ✅ **Terraform Format Check** - Code formatting validation
- ✅ **Terraform Init & Validate** - Syntax and configuration validation
- 📊 **Caching** - Terraform provider caching for faster runs

#### **Stage 2: Security Scanning**
- 🔍 **tfsec** - Terraform security analysis
- 🛡️ **Checkov** - Infrastructure as Code security scanning
- 🔧 **Soft Fail** - Security scans don't block deployment

#### **Stage 3: Planning**
- 📋 **Terraform Plan** - Generate execution plan
- 💬 **PR Comments** - Automatic plan summary in pull requests
- 📎 **Plan Artifacts** - Upload plan for apply stage

#### **Stage 4: Apply (Main Branch Only)**
- 🚀 **Terraform Apply** - Deploy infrastructure changes
- ✅ **Deployment Verification** - Validate cluster and pods
- 🔄 **ArgoCD Apps** - Deploy GitOps applications

**Required GitHub Secrets**:
```yaml
# AWS Authentication
ACTIONS_AWS_ROLE_ARN: "arn:aws:iam::123456789012:role/github-actions-role"

# User ARNs for EKS RBAC - Only these users will have cluster access
ADMIN_USER_ARN: "arn:aws:iam::123456789012:user/admin"
DEV_USER_ARN: "arn:aws:iam::123456789012:user/developer"
```

**Optional GitHub Secrets** (for ArgoCD with private Git repositories):
```yaml
# GitOps Repository Access
GITOPS_URL: "https://github.com/username/private-gitops-repo.git"
GITOPS_USERNAME: "username"
GITOPS_PASSWORD: "token_or_password"
```

> **🔒 Access Control**: Only users configured in `ADMIN_USER_ARN` and `DEV_USER_ARN` will be granted access to the EKS cluster through access entries. All other AWS users will be denied cluster access.

**Required GitHub Variables**:
```yaml
# AWS Region for deployment
AWS_REGION: "us-east-1"
```

### **3. Destroy Infrastructure (`destroy-infrastructure.yaml`)**

**Purpose**: Safely destroys all infrastructure resources

**Trigger**: Manual with confirmation (`workflow_dispatch`)

**Safety Features**:
- ⚠️ **Confirmation Required** - Must type "destroy" to proceed
- 🔒 **OIDC Authentication** - Secure AWS access for destruction
- 🧹 **Complete Cleanup** - Destroys all EKS and VPC resources
- 📝 **Backend Warning** - Provides instructions for manual backend cleanup

## 📦 Components

| Component | Purpose | Namespace |
|-----------|---------|----------|
| **ArgoCD** | GitOps deployment | `argocd` |
| **Vault** | Secrets management | `vault` |
| **Istio** | Service mesh security | `istio-system` |
| **Prometheus/Grafana** | Monitoring | `monitoring` |
| **OPA Gatekeeper** | Policy enforcement | `gatekeeper-system` |
| **cert-manager** | Certificate automation | `cert-manager` |
| **External Secrets** | AWS secrets integration | `external-secrets` |
| **AWS Load Balancer Controller** | Ingress management with HA | `kube-system` |
| **Cluster Autoscaler** | Node scaling | `kube-system` |
| **Metrics Server** | Resource metrics | `kube-system` |

## 🔧 Configuration Customization

### **Modify Helm Values**

1. **ArgoCD Configuration**
   ```bash
   vim helm-values/argocd.yaml
   git add helm-values/argocd.yaml
   git commit -m "Update ArgoCD configuration"
   git push origin main
   # GitHub Actions will automatically apply changes
   ```

2. **Prometheus/Grafana Settings**
   ```bash
   vim helm-values/prometheus.yaml
   git add helm-values/prometheus.yaml
   git commit -m "Update Prometheus configuration"
   git push origin main
   # GitHub Actions will automatically apply changes
   ```

### **Scale Cluster**

1. **Modify node group size in eks-main.tf**
   ```hcl
   eks_managed_node_groups = {
     dev = {
       instance_types = ["t2.large"]
       min_size       = 2
       max_size       = 6
       desired_size   = 3
     }
   }
   ```

2. **Apply changes**
   ```bash
   git add eks-main.tf
   git commit -m "Scale cluster nodes"
   git push origin main
   # GitHub Actions will automatically apply changes
   ```

## 🚨 Troubleshooting

### **Common Issues**

1. **Pods stuck in Pending**
   ```bash
   kubectl describe pod <pod-name> -n <namespace>
   kubectl get events --sort-by=.metadata.creationTimestamp
   ```

2. **Certificate issues**
   ```bash
   kubectl get certificates --all-namespaces
   kubectl describe certificate <cert-name> -n <namespace>
   ```

3. **ArgoCD sync failures**
   ```bash
   kubectl logs -n argocd -l app.kubernetes.io/name=argocd-server
   ```

4. **Vault unsealing**
   ```bash
   kubectl exec -n vault vault-0 -- vault operator init
   kubectl exec -n vault vault-0 -- vault operator unseal <key>
   ```

### **Health Checks**

```bash
# Overall cluster health
kubectl get componentstatuses

# Check critical pods
kubectl get pods -n kube-system
kubectl get pods -n istio-system
kubectl get pods -n monitoring

# Verify ingress
kubectl get ingress --all-namespaces
```

## 🔄 Updates and Maintenance

### **Update Infrastructure**

1. **Update Terraform modules**
   ```bash
   # Update .terraform.lock.hcl or module versions in .tf files
   git add .
   git commit -m "Update Terraform modules"
   git push origin main
   # GitHub Actions will automatically plan and apply
   ```

2. **Update Helm charts**
   ```bash
   # Modify version in .tf files
   git add .
   git commit -m "Update Helm chart versions"
   git push origin main
   # GitHub Actions will automatically apply changes
   ```

### **Backup Important Data**

1. **Backup Vault data**
   ```bash
   kubectl exec -n vault vault-0 -- vault operator raft snapshot save backup.snap
   ```

2. **Export ArgoCD applications**
   ```bash
   kubectl get applications -n argocd -o yaml > argocd-backup.yaml
   ```

## 🗑️ Cleanup

### **Destroy Infrastructure**

1. **Remove ArgoCD applications**
   ```bash
   kubectl delete -f argocd-apps/
   ```

2. **Destroy Terraform resources**
   ```bash
   # Use GitHub Actions destroy workflow
   # Go to Actions tab -> Destroy Infrastructure -> Run workflow
   # Type "destroy" to confirm
   ```

3. **Clean up backend (optional)**
   ```bash
   cd backend/
   terraform destroy -auto-approve
   ```

### **Manual Cleanup**

```bash
# Remove any remaining AWS resources
aws ec2 describe-security-groups --filters "Name=group-name,Values=*eks*"
aws elbv2 describe-load-balancers --query 'LoadBalancers[?contains(LoadBalancerName, `k8s`)]'
```

## 🤝 Contributing

> **🌟 We welcome contributions!** Help us improve this DevSecOps platform.

### **Quick Contribution Guide**

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes**
4. **Test thoroughly**
5. **Submit a pull request**

### **🐛 Reporting Issues**

1. **Search existing issues** first to avoid duplicates
2. **Use issue templates** when creating new issues
3. **Provide detailed information**:
   - Environment details
   - Steps to reproduce
   - Expected vs actual behavior
   - Relevant logs or screenshots

### **💡 Feature Requests**

1. **Check existing feature requests**
2. **Describe the use case**
3. **Explain the expected behavior**
4. **Consider implementation approach**

### **🔒 Security Issues**

**Please report security vulnerabilities privately** to the maintainers rather than creating public issues.

## 📞 Support

- 📖 **Documentation**: Comprehensive guides in this README
- 🐛 **Issues**: [Create an issue](../../issues) for bugs and feature requests
- 💬 **Discussions**: [Join discussions](../../discussions) for questions and ideas
- 📧 **Security**: Report security issues privately to maintainers

## 🔗 Related Projects

- **[Application Repository](https://github.com/iamfet/sec-online-boutique-appliation)** - Microservices source code
- **[GitOps Repository](https://github.com/iamfet/sec-gitops-online-boutique)** - Deployment configurations and manifests

## 📚 Resources

- [AWS EKS Documentation](https://docs.aws.amazon.com/eks/)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [Istio Documentation](https://istio.io/latest/docs/)
- [ArgoCD Documentation](https://argo-cd.readthedocs.io/)
- [HashiCorp Vault Documentation](https://www.vaultproject.io/docs)
- [OPA Gatekeeper Documentation](https://open-policy-agent.github.io/gatekeeper/)
- [cert-manager Documentation](https://cert-manager.io/docs/)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**⭐ Star this project if it helps you build secure infrastructure!**

**Built with ❤️ for DevSecOps demonstrations**

**License**: [MIT](LICENSE) | **Version**: v1.0.0