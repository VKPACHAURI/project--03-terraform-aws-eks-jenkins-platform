# 🚀 AWS EKS Jenkins Platform using Terraform

## 📌 Project Overview

## Project_folder_str:
03-terraform-aws-eks-jenkins-platform/
│
├── terraform/
│   ├── backend.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── vpc.tf
│   ├── eks.tf
│   ├── nodegroup.tf
│   ├── iam.tf
│   ├── ecr.tf
│
├── kubernetes/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│
├── jenkins/
│   └── Jenkinsfile
│
├── monitoring/
│   ├── prometheus-values.yaml
│   └── grafana-values.yaml
│
├── python/
│   ├── cluster-health.py
│   ├── pod-monitor.py
│   └── inventory.py
│
├── screenshots/
│
├── README.md
└── .gitignore

This project demonstrates the deployment of a Jenkins CI/CD platform on Amazon EKS using Terraform, Helm, Kubernetes, AWS Load Balancer Controller, and Amazon EBS CSI Driver.

The infrastructure is provisioned using Infrastructure as Code (IaC) with Terraform and deployed on AWS cloud services following modern DevOps practices.

---

## 🏗️ Architecture

```text
Internet
   │
   ▼
AWS Application Load Balancer (ALB)
   │
   ▼
Kubernetes Ingress
   │
   ▼
Jenkins Service
   │
   ▼
Jenkins Controller Pod
   │
   ▼
Amazon EBS Volume
```

---

## 🛠️ Technologies Used

### Cloud
- AWS
- Amazon EKS
- Amazon EBS
- AWS IAM
- AWS ALB

### Infrastructure as Code
- Terraform

### Container Orchestration
- Kubernetes
- Helm

### CI/CD
- Jenkins

### Programming
- Python

### DevOps Tools
- AWS CLI
- kubectl
- Git
- GitHub

---

## ✨ Features

- Provision AWS EKS Cluster using Terraform
- Configure Kubernetes Worker Nodes
- Install AWS Load Balancer Controller
- Configure IAM Roles for Service Accounts (IRSA)
- Install Amazon EBS CSI Driver
- Dynamic Persistent Volume Provisioning
- Deploy Jenkins using Helm
- Expose Jenkins through AWS Application Load Balancer
- Kubernetes Ingress Configuration
- Persistent Jenkins Storage using EBS
- Infrastructure Automation

---

## 📂 Project Structure

```text
project-03-terraform-aws-eks-jenkins-platform/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── providers.tf
│
├── jenkins/
│   └── jenkins-values.yaml
│
├── ingress/
│   └── ingress.yaml
│
├── screenshots/
│
├── README.md
└── .gitignore
```

---

## 🚀 Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/<your-username>/terraform-aws-eks-jenkins-platform.git
cd terraform-aws-eks-jenkins-platform
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Create Infrastructure

```bash
terraform plan
terraform apply
```

### 4. Configure kubectl

```bash
aws eks update-kubeconfig \
--region ap-south-1 \
--name project03-eks-cluster
```

### 5. Install AWS Load Balancer Controller

```bash
helm install aws-load-balancer-controller ...
```

### 6. Install Amazon EBS CSI Driver

```bash
aws eks create-addon \
--cluster-name project03-eks-cluster \
--addon-name aws-ebs-csi-driver
```

### 7. Deploy Jenkins

```bash
helm install jenkins jenkins/jenkins \
-n jenkins \
-f jenkins/jenkins-values.yaml
```

### 8. Verify Resources

```bash
kubectl get nodes
kubectl get pods -A
kubectl get ingress
kubectl get pvc -n jenkins
```

---

## 📊 Key Learnings

- Terraform Infrastructure Automation
- Amazon EKS Cluster Management
- Kubernetes Networking and Ingress
- Jenkins Deployment on Kubernetes
- Persistent Volume Management
- AWS IAM and OIDC Integration
- IRSA Configuration
- Amazon EBS CSI Driver Setup
- Helm Package Management
- Production-Level Troubleshooting

---

## 🔍 Challenges Faced

### AWS Load Balancer Controller Setup
- Configured IAM Policy
- Configured OIDC Provider
- Installed ALB Controller

### Amazon EBS CSI Driver Issues
- Driver Add-on entered CREATE_FAILED state
- IAM Role trust policy misconfiguration
- Fixed IRSA configuration
- Successfully provisioned Persistent Volumes

### Jenkins Deployment Issues
- PVC remained Pending
- Storage provisioning troubleshooting
- EBS CSI Driver integration validation
- Persistent volume binding successful

---

## 📸 Screenshots

Add screenshots for:

- EKS Cluster
- Worker Nodes
- AWS Load Balancer Controller
- Jenkins Deployment
- Persistent Volume Claims
- Ingress Resources
- AWS Load Balancer
- Jenkins Dashboard

---

## 🎯 Project Outcome

Successfully deployed a Jenkins platform on Amazon EKS with:

- Terraform-managed infrastructure
- Kubernetes orchestration
- AWS Application Load Balancer integration
- Persistent storage using Amazon EBS
- Jenkins deployment using Helm
- Secure IAM integration using IRSA

---

## 👨‍💻 Author

**Vishesh Pachauri**

DevOps | Cloud | AWS | Kubernetes | Terraform | Python

GitHub: https://github.com/<your-github-username>

LinkedIn: https://www.linkedin.com/in/<your-linkedin-profile>

---

## ⭐ Support

If you found this project useful, consider giving it a ⭐ on GitHub.