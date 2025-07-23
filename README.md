
# Application Deployment on Bean Stalk Deployment

This repository uses **Terraform** to provision AWS infrastructure and deploy an **Node Js** using **Elastic Bean Stalk**.

## 🚀 Project Overview

### Key Features

* Modularized Terraform structure (VPC & BeanStalk modules)
* Custom VPC with Public and Private subnet
* Publicly accessible Node application

## Architecture Diagram

![Folder Structure](./task10.png)
## 🔐 AWS CLI Configuration

Ensure your CLI is configured with proper credentials:
```bash
aws configure
```
## ⚙️ Deployment Steps

```bash
# Step 1: Initialize Terraform
terraform init

# Step 2: Preview the execution plan
terraform plan

# Step 3: Apply and provision the infrastructure
terraform apply
```
## 📦 Provisioned Resources

* **VPC** with subnets
* **ECS Cluster**, Task Definition, and Service
* **Security Group** (HTTP access)
* **Nginx Container** accessible via Public IP

## 🌐 Access

After deployment, access your Node application using the Bean Stalk DNS.

## 🧹 Cleanup

To destroy all provisioned resources:

```bash
terraform destroy
```



