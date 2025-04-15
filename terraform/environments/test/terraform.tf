terraform {
  required_version = "~> 1.5"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.96.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate-final-prod"
    storage_account_name = "tfstatestoragecsttt"
    container_name       = "tfstate-prod"
    key                  = "test.app.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}