module "network" {
  source      = "../../modules/network"
  location    = "eastus"
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

module "redis_prod" {
  source              = "../../modules/redis"
  environment         = "prod"
  location            = var.region
  resource_group_name = module.network.resource_group_name
}
