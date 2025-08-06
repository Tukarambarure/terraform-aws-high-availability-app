# terraform-aws-high-availability-app

# 🏗️ High Availability Web Application on AWS using Terraform

This project demonstrates how to deploy a **highly available web application** on AWS using **Terraform**. The infrastructure is designed to ensure **fault tolerance**, **scalability**, and **high availability** using core AWS services like EC2, VPC, ALB, and Auto Scaling Groups.

---

## 📦 Outcome

### ✅ Infrastructure Components:
- A VPC with public and private subnets across multiple AZs
- An Internet Gateway for outbound internet access
- Public route tables for public subnets
- EC2 Instances inside an Auto Scaling Group
- Application Load Balancer (ALB) distributing traffic across EC2 instances
- Security Groups for controlled traffic flow

### 🌐 Access:
- The web application is accessible via the **ALB DNS Name**
- ALB routes incoming HTTP traffic to instances in multiple AZs
- Ensures high availability and fault tolerance

---

## 📐 Architecture Diagram


<img width="1024" height="1024" alt="Terraform HA Architecture" src="https://github.com/user-attachments/assets/558faa8d-521c-4c24-b2fa-43f0652ae905" />

---

## 🚀 How to Use

### 🧱 Prerequisites
- AWS account
- Terraform >= 1.5.0
- AWS CLI configured (`aws configure`)
- IAM permissions for VPC, EC2, ALB, Auto Scaling

### 🛠️ Steps

```bash
# 1. Clone the repo
git clone https://github.com/your-username/terraform-aws-ha-webapp.git
cd terraform-aws-ha-webapp

# 2. Initialize Terraform
terraform init

# 3. Review the plan
terraform plan -var-file="terraform.tfvars"

# 4. Apply the configuration
terraform apply -var-file="terraform.tfvars"

# 5. Get the ALB DNS from the output

terraform-aws-ha-webapp/
├── main.tf                 # Root module to call all others
├── variables.tf            # Input variables
├── outputs.tf              # Output values
├── terraform.tf            # Terraform block (version, providers)
├── providers.tf            # AWS provider configuration
├── terraform.tfvars.example  # Sample variable values
├── modules/
│   ├── vpc/                # VPC, subnets, route tables
│   ├── ec2/                # EC2 launch template
│   ├── alb/                # Application Load Balancer
│   └── asg/                # Auto Scaling Group
└── README.md               # You're here

