terraform {
  required_version = ">= 1.6.0"  # Match your Terraform version

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.85.0"       # Match your Azure provider version
    }
  }
}