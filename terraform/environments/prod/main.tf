provider "azurerm" {
  features {}
}

module "network" {
  source      = "../../modules/network"
  location    = "canadacentral"
  environment = "prod"
}

module "aks" {
  source              = "../../modules/aks"
  environment         = "prod"
  location            = module.network.location
  resource_group_name = module.network.resource_group_name

  # Set module variables
  node_count = 1
  min_count  = 1
  max_count  = 3
}