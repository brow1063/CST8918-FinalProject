module "aks" {
  source              = "../../modules/aks"
  environment         = "prod"
  location            = module.network.location
  resource_group_name = module.network.resource_group_name
  node_count          = 1
  
 
  default_node_pool {
    name                = "default"
    vm_size             = "Standard_B2s"
    enable_auto_scaling = true
    min_count           = 1
    max_count           = 3
  }

  kubernetes_version = "1.32"
}