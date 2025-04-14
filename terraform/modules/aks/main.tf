terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "${var.environment}-aks"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.environment}-aks"
  kubernetes_version  = "1.32"

  default_node_pool {
    name       = "default"
    vm_size    = "Standard_B2s"
    node_count = var.node_count
    min_count  = var.min_count
    max_count  = var.max_count
  }

  identity {
    type = "SystemAssigned"
  }
}
