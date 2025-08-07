# DevOps Task 3: Infrastructure as Code with Terraform & Docker

## Objective

Provision a **local Docker container** using **Terraform**, demonstrating Infrastructure as Code (IaC) practices.

---

## Tools Used

- **Terraform** 
-  **Docker**
-  **Ubuntu Linux**
-**VS Code / Terminal**

---

## Project Structure
terraform-dock-container/
├── main.tf # Terraform configuration file
├── terraform.tfstate # Terraform state file (generated after apply)
└── README.md # Project documentation
---
## Steps Performed

### 1.Installed Terraform & Docker
```bash
sudo apt update
sudo apt install terraform 

### 2.Created main.tf

### 3.Ran Terraform Commands
```bash
terraform init     # Initialize Terraform provider
terraform plan     # Preview the resources to be created
terraform apply    # Provision the Docker container

### 4.Verified Nginx Container
```bash
docker ps

### 5.Visit 
 http://localhost:8081

### 6.Destroyed Infrastructure
```bash
terraform destroy

## Screenshots are available

# THANK YOU
