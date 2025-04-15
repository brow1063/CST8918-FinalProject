# CST8918-FinalProject

## Members
- [Andrew Brown (brow1063)](https://github.com/brow1063)
- [James Ngugi (ngugi-james)](https://github.com/ngugi-james)
- [Ngugi Kariuki (Elikariuki)](https://github.com/Elikariuki)
- [Jaelend Setosta (jaelendsetosta-ac)](https://github.com/jaelendsetosta-ac)

## Overview
This capstone project demonstrates the practical application of Infrastructure as Code (IaC) principles using Terraform and Azure to support the deployment of the Remix Weather Application. The goal is to simulate a real-world DevOps environment that includes collaboration among team members, automated infrastructure provisioning, continuous integration and deployment workflows, and multi-environment management.

The Remix Weather Application, originally developed in Week 3 of the course, is deployed to Azure Kubernetes Service (AKS) clusters in both testing and production environments. A managed Redis Cache is integrated into each environmet to enhance performance by caching weather API data.

All infrastructure is provisioned using Terraform, with configuration organized into reusable modules. Azure Blob Storage is configured as a remote backend for managing Terraform state securely and collaboratively.

The infrastructure and application code are managed within a single repository, and GitHub Actions is used to implement CI/CD workflows. These workflows automate Terraform validations, static code analysis, plan/apply actions, and Docker image builds and deployments. Pull requests to the main branch trigger appropriate workflows depending on whether the changes affect infrastructure or application code.

This project emphasizes:
- Reusability and modularity of Terraform code
- Secure and scalable Azure resource provisioning
- Automated testing and deployment pipelines
- Collaboration best practices using GitHub and protected branches
- Real-world DevOps practices in a multi-developer environment

## Architecture
- Azure Kubernetes Service (AKS) clusters for test and production environments
- Azure Cache for Redis for data caching
- Azure Container Registry (ACR) for Docker images
- Azure Blob Storage for Terraform state

## Getting Started
1. Clone this repository
```bash
git clone https://github.com/YOUR-ORG/CST8918-FinalProject.git
```
2. Install Azure CLI and Terraform
3. Configure Azure credentials

```bash
az login
```
4. Initialize Terraform: 

```bash
terraform init
```

5. Review and apply 

```bash
terraform plan
terraform apply

```

## Problems encountered
1. API versioning on the AKS cluster - During deployment, an error occurred due to the use of an unsupported API version (2023-06-02-preview) for the managedClusters resource type in the eastus region. The error message indicated that this version was not registered for that location, preventing successful provisioning of the AKS cluster.

## Screenshot
![git-checks](https://github.com/user-attachments/assets/a66919f0-b9d8-44dd-b65d-d95c6e16cf8e)


