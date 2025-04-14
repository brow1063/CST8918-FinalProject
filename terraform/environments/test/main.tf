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
  environment         = "test"
  location            = module.network.location
  resource_group_name = module.network.resource_group_name
  node_count          = 1
}