 **🔒 Security-First DevSecOps Platform**


## 🎯 Overview

Complete **DevSecOps platform** on Amazon EKS featuring:
- 🛡️ **Zero-trust security** with Istio service mesh
- 🔐 **Fine-grained RBAC** with EKS API access entries
- 🗝️ **Automated secrets management** with HashiCorp Vault
- ⚖️ **Policy-as-code** enforcement with OPA Gatekeeper
- 🚀 **GitOps deployment** with ArgoCD
- 📊 **Comprehensive monitoring** with Prometheus and Grafana
- 🏗️ **Infrastructure-as-code** with Terraform

## 🏗️ Architecture Components

| Layer | Components | Purpose |
|-------|------------|----------|
| **🌐 Edge Security** | Route53, Let's Encrypt, AWS ALB | DNS, certificates, and secure ingress |
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

### **🚀 DevSecOps Automation**
- **Infrastructure as Code** - Complete Terraform automation
- **GitOps Deployment** - ArgoCD continuous delivery
- **Policy as Code** - OPA Gatekeeper constraint templates
- **Security as Code** - Automated security controls
- **Monitoring as Code** - Grafana dashboards and alerts

### **🔒 Enterprise Security**
- **Zero-Trust Architecture** - mTLS encryption by default
- **Fine-Grained RBAC** - EKS API access entries with namespace-level permissions
- **Secrets Management** - Vault + External Secrets automation
- **Certificate Automation** - Let's Encrypt + cert-manager + Route53 DNS validation
- **Policy Enforcement** - Runtime admission control
- **Audit Logging** - Comprehensive security audit trail

### **🛡️ Compliance & Governance**
- **Access Management** - Admin users get cluster-wide access, developers restricted to specific namespaces
- **Network Segmentation** - Istio service mesh isolation
- **Data Encryption** - At-rest and in-transit encryption
- **Policy Compliance** - Automated policy enforcement and monitoring
- **Security Benchmarks** - CIS and security best practices

### **📊 Observability & Monitoring**
- **Real-time Dashboards** - Grafana operational and security metrics
- **Proactive Alerting** - Prometheus-based alert management
- **Service Mesh Observability** - Istio distributed tracing and metrics
- **Performance Monitoring** - Application and infrastructure metrics

## 🛠️ Technology Stack

### **☁️ Cloud Platform**
- **Amazon Web Services (AWS)** - Cloud infrastructure provider
- **Amazon EKS** - Managed Kubernetes service
- **AWS Route53** - DNS management and health checking
- **Let's Encrypt** - SSL/TLS certificate management via cert-manager
- **AWS KMS** - Key management and encryption
- **AWS Secrets Manager** - Centralized secrets storage
- **AWS IAM** - Identity and access management

### **🏗️ Infrastructure as Code**
- **Terraform** - Infrastructure provisioning and management
- **Helm** - Kubernetes package manager
- **GitHub Actions** - CI/CD pipeline automation

### **🔒 Security Tools**
- **HashiCorp Vault** - Secrets management and encryption
- **External Secrets Operator** - Kubernetes secrets automation
- **Open Policy Agent (OPA) Gatekeeper** - Policy enforcement
- **cert-manager** - Certificate lifecycle management
- **Istio** - Service mesh security and observability

### **📊 Monitoring and Observability**
- **Prometheus** - Metrics collection and alerting
- **Grafana** - Visualization and dashboarding

### **🚀 GitOps and Deployment**
- **ArgoCD** - GitOps continuous delivery
- **GitHub Actions** - CI/CD pipeline automation
- **Git** - Version control and GitOps workflow

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

## 📋 Prerequisites

> **⚠️ Important**: Ensure all prerequisites are met before deployment to avoid issues.

### **☁️ AWS Requirements**
- **AWS Account** - Active AWS account with appropriate permissions
- **AWS CLI** - Version 2.x installed and configured
  ```bash
  aws configure
  aws sts get-caller-identity  # Verify credentials
  ```
- **AWS Permissions** - IAM user/role with permissions for:
  - EKS cluster creation and management
  - VPC, subnets, security groups, and networking
  - IAM roles and policies creation
  - Route53 hosted zone management
  - Certificate Manager (ACM) access
  - KMS key management
  - Secrets Manager access
  - Load Balancer Controller permissions

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

### **Mandatory Variables**
These variables **must** be provided in `terraform.tfvars`:

> **⚠️ Important**: AWS users must be created in your AWS account before deploying the infrastructure.

| Variable | Description | Example |
|----------|-------------|----------|
| `user_for_admin_role` | ARN of AWS user for admin access (must exist in AWS) | `arn:aws:iam::123456789012:user/admin` |
| `user_for_dev_role` | ARN of AWS user for developer access (must exist in AWS) | `arn:aws:iam::123456789012:user/developer` |

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

### **Variable Configuration Examples**

**Minimal terraform.tfvars:**
```hcl
# Required variables only
user_for_admin_role = "arn:aws:iam::123456789012:user/admin"
user_for_dev_role = "arn:aws:iam::123456789012:user/developer"
```

**Complete terraform.tfvars:**
```hcl
# Project Configuration
project_name = "my-devsecops-platform"
aws_region = "us-west-2"
kubernetes_version = "1.33"

# Network Configuration
vpc_cidr_block = "172.16.0.0/16"
private_subnets_cidr = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
public_subnets_cidr = ["172.16.101.0/24", "172.16.102.0/24", "172.16.103.0/24"]

# RBAC Configuration
user_for_admin_role = "arn:aws:iam::123456789012:user/platform-admin"
user_for_dev_role = "arn:aws:iam::123456789012:user/developer"

# Environment
environment = "production"
```

## 🚀 Quick Start

```bash
# 1. Clone repository
git clone https://github.com/iamfet/sec-eks-infra-automation.git
cd sec-eks-infra-automation

# 2. Configure variables
cp terraform.tfvars.example terraform.tfvars
# Edit with your AWS settings

# 3. Deploy backend (first time only)
cd backend && terraform init && terraform apply && cd ..

# 4. Deploy infrastructure
terraform init
terraform apply -var-file="terraform.tfvars"

# 5. Access cluster
aws eks update-kubeconfig --region us-east-1 --name $(terraform output -raw cluster_name)
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

### **Step 2: Configure Variables**

1. **Create terraform.tfvars**
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. **Edit variables**
   ```hcl
   # terraform.tfvars
   project_name = "carney-shop"
   
   # Required: AWS User ARNs for RBAC
   user_for_admin_role = "arn:aws:iam::495599766789:user/fetdevops"
   user_for_dev_role = "arn:aws:iam::495599766789:user/developer"
   
   # Optional: Network Configuration (defaults provided)
   vpc_cidr_block = "10.0.0.0/16"
   private_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
   public_subnets_cidr = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
   
   # Optional: EKS Configuration
   kubernetes_version = "1.33"
   aws_region = "us-east-1"
   environment = "dev"
   ```

### **Step 3: Backend Setup (First Time Only)**

1. **Deploy Terraform backend**
   ```bash
   cd backend/
   terraform init
   terraform plan
   terraform apply
   cd ..
   ```

2. **Initialize main Terraform**
   ```bash
   terraform init
   ```

### **Step 4: Infrastructure Deployment**

1. **Plan the deployment**
   ```bash
   terraform plan -var-file="terraform.tfvars"
   ```

2. **Deploy infrastructure**
   ```bash
   terraform apply -var-file="terraform.tfvars" -auto-approve
   ```

   **Deployment time**: ~20-30 minutes

3. **Verify deployment**
   ```bash
   # Check cluster status
   aws eks describe-cluster --name $(terraform output -raw cluster_name)
   
   # Configure kubectl
   aws eks update-kubeconfig --region us-east-1 --name $(terraform output -raw cluster_name)
   
   # Verify nodes
   kubectl get nodes
   ```

### **Step 5: Post-Deployment Verification**

1. **Check all pods are running**
   ```bash
   kubectl get pods --all-namespaces
   ```

2. **Verify ArgoCD**
   ```bash
   kubectl get pods -n argocd
   kubectl port-forward svc/argocd-server -n argocd 8080:443
   # Access: https://localhost:8080
   ```

3. **Verify Grafana**
   ```bash
   kubectl get pods -n monitoring
   kubectl port-forward svc/kube-prometheus-stack-grafana -n monitoring 3000:80
   # Access: http://localhost:3000
   ```

4. **Check Vault status**
   ```bash
   kubectl get pods -n vault
   kubectl exec -n vault vault-0 -- vault status
   ```

### **Step 6: GitOps Setup**

1. **Deploy ArgoCD applications**
   ```bash
   kubectl apply -f argocd-apps/
   ```

2. **Verify applications**
   ```bash
   kubectl get applications -n argocd
   ```

## 🌐 Service Access

### **🔧 Development Access (Port-Forward)**

**For testing without domain configuration:**

1. **ArgoCD**
   ```bash
   # Get admin password
   kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d
   
   # Port forward
   kubectl port-forward svc/argocd-server -n argocd 8080:443
   
   # Access: https://localhost:8080
   # Username: admin
   # Password: <from above command>
   ```

2. **Grafana**
   ```bash
   # Get admin password
   kubectl get secret kube-prometheus-stack-grafana -n monitoring -o jsonpath="{.data.admin-password}" | base64 -d
   
   # Port forward
   kubectl port-forward svc/kube-prometheus-stack-grafana -n monitoring 3000:80
   
   # Access: http://localhost:3000
   # Username: admin
   # Password: <from above command>
   ```

3. **Vault**
   ```bash
   # Port forward
   kubectl port-forward svc/vault -n vault 8200:8200
   
   # Access: http://localhost:8200
   # Initialize Vault (first time only)
   kubectl exec -n vault vault-0 -- vault operator init
   ```

4. **Prometheus**
   ```bash
   # Port forward
   kubectl port-forward svc/kube-prometheus-stack-prometheus -n monitoring 9090:9090
   
   # Access: http://localhost:9090
   ```

## 🚀 GitHub Actions CI/CD

### **Automated Workflows**

The repository includes three GitHub Actions workflows for complete infrastructure lifecycle management:

### **1. Bootstrap Backend (`bootstrap-backend.yaml`)**

**Purpose**: Sets up Terraform remote state backend (S3 + DynamoDB)

**Trigger**: Manual (`workflow_dispatch`)

**Key Features**:
- 🔒 **OIDC Authentication** - Secure AWS access without long-lived credentials
- 🗄️ **S3 Backend Setup** - Creates remote state storage
- 🔒 **DynamoDB Locking** - Prevents concurrent Terraform runs

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

**Required Secrets**:
```yaml
ACTIONS_AWS_ROLE_ARN: "arn:aws:iam::123456789012:role/github-actions-role"
ADMIN_USER_ARN: "arn:aws:iam::123456789012:user/admin"
DEV_USER_ARN: "arn:aws:iam::123456789012:user/developer"
```

### **3. Destroy Infrastructure (`destroy-infrastructure.yaml`)**

**Purpose**: Safely destroys all infrastructure resources

**Trigger**: Manual with confirmation (`workflow_dispatch`)

**Safety Features**:
- ⚠️ **Confirmation Required** - Must type "destroy" to proceed
- 🧹 **ArgoCD Cleanup** - Removes applications before infrastructure
- 📝 **Backend Warning** - Manual backend cleanup instructions

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
| **AWS Load Balancer Controller** | Ingress management | `kube-system` |
| **Cluster Autoscaler** | Node scaling | `kube-system` |
| **Metrics Server** | Resource metrics | `kube-system` |

## 🔧 Configuration Customization

### **Modify Helm Values**

1. **ArgoCD Configuration**
   ```bash
   vim helm-values/argocd.yaml
   terraform apply -var-file="terraform.tfvars"
   ```

2. **Prometheus/Grafana Settings**
   ```bash
   vim helm-values/prometheus.yaml
   terraform apply -var-file="terraform.tfvars"
   ```

### **Add Custom Policies**

1. **OPA Gatekeeper constraints**
   ```bash
   kubectl apply -f custom-policies/
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
   terraform apply -var-file="terraform.tfvars"
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
   terraform get -update
   terraform plan -var-file="terraform.tfvars"
   terraform apply -var-file="terraform.tfvars"
   ```

2. **Update Helm charts**
   ```bash
   # Modify version in .tf files
   terraform apply -var-file="terraform.tfvars"
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
   terraform destroy -var-file="terraform.tfvars" -auto-approve
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