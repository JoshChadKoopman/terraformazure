# Infrastructure as Code (IaC) with Azure and Terraform 🚀
Automate Azure infrastructure provisioning with **Terraform**. This project demonstrates the power of Infrastructure as 
Code (IaC) to provision Azure resources like Virtual Machines, Storage Accounts, and more. It also integrates with 
GitHub Actions for CI/CD.

---

# 🌟 Features
- **Provision Azure Resources**: Automatically create Virtual Machines, Storage Accounts, and other Azure resources.
- **Modular Design**: Use reusable Terraform modules for scalability and maintainability.
- **Remote State Management**: Manage Terraform state using Azure Blob Storage.
- **CI/CD Integration**: Automate deployments with GitHub Actions.
- **Best Practices**: Follow industry standards for Infrastructure as Code.

---

# 📂 Project Structure
```shell
azure-terraform-iac/
├── .github/
│   ├── workflows/
│   │   └── terraform-deploy.yml  # GitHub Actions workflow for CI/CD
├── modules/
│   ├── virtual-machine/
│   │   ├── main.tf              # VM module code
│   │   ├── variables.tf         # Module variables
│   │   └── outputs.tf           # Module outputs
│   ├── storage-account/
│   │   ├── main.tf              # Storage Account module code
│   │   ├── variables.tf         # Module variables
│   │   └── outputs.tf           # Module outputs
├── main.tf                      # Main Terraform configuration
├── variables.tf                 # Input variables for the project
├── outputs.tf                   # Outputs from the project
├── terraform.tfvars             # Default values for variables
├── backend.tf                   # Remote state backend configuration
├── provider.tf                  # Azure provider configuration
└── README.md                    # Project documentation
```

---

# 🔧 Prerequisites
## Tools Required:
- **Terraform**
- **Azure CLI**
- **Git**

## Azure Setup:
- Active Azure subscription.
- Service principal credentials for Terraform (or use Azure CLI login).

---

# 🚀 Getting Started
## 1. Clone the Repository
```shell
git clone https://github.com/your-username/azure-terraform-iac.git
cd azure-terraform-iac
```

## 2.Configure Azure Authentication
Login to Azure using the Azure CLI:
```shell
az login
```
## 3. Set Up Backend State
Edit the backend.tf file to configure remote state storage: 
```shell
terraform {
  backend "azurerm" {
    resource_group_name  = "<RESOURCE_GROUP>"
    storage_account_name = "<STORAGE_ACCOUNT>"
    container_name       = "<CONTAINER_NAME>"
    key                  = "terraform.tfstate"
  }
}
```

## 4. Initialize Terraform
Run the following to initialize the project and install dependencies:
```shell
terraform init
```

## 4. Deploy Infrastructure
To plan and deploy the infrastructure:
```shell
terraform plan
terrafom apply
```
---

# ⚡ Automation with GitHub Actions
This project includes a GitHub Actions workflow for CI/CD automation.

## Workflow Path
```shell
.github/workflows/terraform-deploy.yml
```
## Workflow Steps
- **Checkout Code**: Fetch repository code.
- **Set up Terraform**: Install Terraform.
- **Initialize Terraform**: Initialize backend and modules.
- **Plan Infrastructure**: Generate an execution plan.

--- 

# 📖 Resources
- [**Terraform Documentation**](https://developer.hashicorp.com/terraform/docs)
- [**Azure Terraform Provider**](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [**Azure CLI Documentation**](https://learn.microsoft.com/en-us/cli/azure/)

---
