terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5c6b83a7-65d5-47a9-abc0-fd5fbde212b5"
}

module "network" {
  source = "../../modules/network"
  region = var.region
}

module "aks" {
  source              = "../../modules/aks"
  environment         = "prod"
  resource_group_name = module.network.resource_group_name
  region              = module.network.location
  enable_auto_scaling = true
  min_count           = 1
  max_count           = 3
  node_count          = 1
  vm_size             = "Standard_B2s"
  kubernetes_version  = "1.32"
}
