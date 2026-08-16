# 🚀 Terraform Infrastructure with GitHub Actions

This repository demonstrates how to provision and manage Azure infrastructure using **Terraform**, **Terraform Modules**, and **GitHub Actions**.

The project follows Infrastructure as Code (IaC) principles and uses a modular structure to create and manage Azure resources.

---

## 📌 Project Overview

This project is designed to:

* Provision Azure infrastructure using Terraform
* Use reusable Terraform modules
* Create an Azure Resource Group
* Create an Azure Virtual Network
* Manage separate environments
* Automate Terraform validation and planning using GitHub Actions
* Follow a Pull Request based workflow for the `main` branch

---

## 🛠️ Technologies Used

* ☁️ Microsoft Azure
* 🏗️ Terraform
* 🔄 GitHub Actions
* 🐙 Git & GitHub
* 💻 Infrastructure as Code (IaC)

---

## 📁 Project Structure

```text
TERRAFORM_NEW_ACTION/
│
├── environment/
│   └── dev/
│       ├── .terraform/
│       ├── .terraform.lock.hcl
│       ├── main.tf
│       ├── provider.tf
│       ├── terraform.tfvars
│       └── variable.tf
│
├── module/
│   │
│   ├── resource_group/
│   │   ├── main.tf
│   │   └── variable.tf
│   │
│   └── virtual_network/
│       ├── main.tf
│       └── variable.tf
│
├── .gitignore
└── README.md
```

---

# 🏗️ Architecture

The infrastructure follows a modular approach:

```text
                ┌──────────────────┐
                │   GitHub Repo    │
                └────────┬─────────┘
                         │
                         ▼
                ┌──────────────────┐
                │  GitHub Actions  │
                │ Terraform Plan   │
                └────────┬─────────┘
                         │
                         ▼
                ┌──────────────────┐
                │ Terraform Root   │
                │ Environment Dev  │
                └────────┬─────────┘
                         │
             ┌───────────┴───────────┐
             │                       │
             ▼                       ▼
   ┌──────────────────┐    ┌──────────────────┐
   │ Resource Group   │    │ Virtual Network  │
   │     Module       │    │     Module       │
   └────────┬─────────┘    └────────┬─────────┘
            │                       │
            └───────────┬───────────┘
                        ▼
                 Microsoft Azure
```

---

# 📦 Terraform Modules

## 1️⃣ Resource Group Module

The `resource_group` module is responsible for creating an Azure Resource Group.

**Location:**

```text
module/resource_group
```

Files:

```text
main.tf
variable.tf
```

---

## 2️⃣ Virtual Network Module

The `virtual_network` module is responsible for creating an Azure Virtual Network.

**Location:**

```text
module/virtual_network
```

Files:

```text
main.tf
variable.tf
```

---

# ⚙️ Environment Configuration

Currently, the project contains a development environment:

```text
environment/dev
```

The environment folder contains:

| File                  | Description                            |
| --------------------- | -------------------------------------- |
| `main.tf`             | Calls and configures Terraform modules |
| `provider.tf`         | Configures the Azure provider          |
| `variable.tf`         | Defines input variables                |
| `terraform.tfvars`    | Provides values for variables          |
| `.terraform.lock.hcl` | Locks provider versions                |

---

# 🚀 How to Run Locally

## Step 1: Clone the Repository

```bash
git clone https://github.com/hiteshsinghmar697-cpu/terraform_new_action.git
```

## Step 2: Move to the Development Environment

```bash
cd terraform_new_action/environment/dev
```

## Step 3: Initialize Terraform

```bash
terraform init
```

## Step 4: Format Terraform Files

```bash
terraform fmt
```

## Step 5: Validate Configuration

```bash
terraform validate
```

## Step 6: Review Infrastructure Changes

```bash
terraform plan
```

## Step 7: Apply Infrastructure

```bash
terraform apply
```

Type `yes` when Terraform asks for confirmation.

---

# 🔄 GitHub Actions CI/CD Workflow

GitHub Actions is used to automate the Terraform workflow.

The pipeline performs the following steps:

```text
Developer
    │
    ▼
Create Feature Branch
    │
    ▼
Push Code to GitHub
    │
    ▼
Create Pull Request
    │
    ▼
GitHub Actions Starts
    │
    ├── Terraform Format Check
    ├── Terraform Init
    ├── Terraform Validate
    └── Terraform Plan
            │
            ▼
      Merge Pull Request
            │
            ▼
        Main Branch
```

---

# 🌿 Branch Strategy

This repository follows a feature branch workflow.

```text
main
│
├── feature/add-resource-group
│
├── feature/add-vnet
│
└── feature/update-terraform
```

Recommended workflow:

```bash
git checkout -b feature/your-feature-name
```

Make changes and commit:

```bash
git add .
git commit -m "Add Terraform infrastructure"
```

Push the feature branch:

```bash
git push origin feature/your-feature-name
```

Then create a **Pull Request** to merge the changes into the `main` branch.

---

# 🔐 Branch Protection

The `main` branch is protected using GitHub Branch Protection Rules.

Recommended rules:

* Require a Pull Request before merging
* Require status checks to pass
* Require conversation resolution before merging

This helps ensure that infrastructure changes are validated before merging into the `main` branch.

---

# 📚 Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Format Terraform files:

```bash
terraform fmt
```

Validate configuration:

```bash
terraform validate
```

Create an execution plan:

```bash
terraform plan
```

Apply infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

---

# 🎯 Learning Objectives

This project demonstrates practical knowledge of:

* Terraform Infrastructure as Code
* Terraform Modules
* Azure Infrastructure
* Resource Group Management
* Virtual Network Configuration
* Environment-based Terraform structure
* Git and GitHub
* Branch Protection Rules
* Pull Requests
* GitHub Actions
* CI/CD Automation

---

# 👨‍💻 Author

**Hitesh Singhmar**

Cloud & DevOps Enthusiast

**Skills:**

`Microsoft Azure` • `Terraform` • `Git` • `GitHub Actions` • `Linux` • `CI/CD` • `Infrastructure as Code`

---

⭐ If you found this project useful, consider giving it a star!
