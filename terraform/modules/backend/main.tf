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

resource "azurerm_resource_group" "tfstate" {
  name     = "tfstate-final-${var.environment}"
  location = var.location
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstatestoragecsttt"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate-${var.environment}"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}