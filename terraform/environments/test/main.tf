module "network" {
  source      = "../../modules/network"
  location    = "eastus"
  environment = "prod"
}


module "aks" {
  source              = "../../modules/aks"
  environment         = "test"
  location            = module.network.location
  resource_group_name = module.network.resource_group_name
  node_count          = 1
}

module "redis_test" {
  source              = "../../modules/redis"
  environment         = "test"
  location            = var.region
  resource_group_name = module.network.resource_group_name
}
