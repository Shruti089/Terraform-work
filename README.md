# AWS Infrastructure using Terraform (ALB + Bastion + Private EC2)

This project demonstrates a **production-style AWS infrastructure** built using **Terraform**, following DevOps best practices.

## 🚀 Architecture Overview

- Custom VPC
- 2 Public Subnets (Multi-AZ)
- 1 Private Subnet
- Internet Gateway
- NAT Gateway
- Bastion Host (Public EC2)
- Private EC2 Instance
- Application Load Balancer (ALB)
- Target Group & Listener
- Security Groups with least privilege access

## 🛠️ Tech Stack

- Terraform
- AWS EC2
- VPC
- ALB
- Security Groups
- NAT Gateway

## 🗺️ AWS Region

- eu-north-1 (Stockholm)

## 📐 CIDR Design

- VPC: `10.50.0.0/16`
- Public Subnet 1: `10.50.1.0/24`
- Public Subnet 2: `10.50.2.0/24`
- Private Subnet: `10.50.3.0/24`

## 🔐 Security Design

- Bastion Host allows SSH only from my public IP
- Private EC2 allows SSH only from Bastion Security Group
- ALB allows HTTP (80) from internet

## ⚙️ How to Deploy

```bash
terraform init
terraform validate
terraform plan
terraform apply
