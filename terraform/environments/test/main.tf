module "aks" {
  source              = "../../modules/aks"
  environment         = "test"
  resource_group_name = module.network.resource_group_name
  region              = module.network.location
  enable_auto_scaling = false
  node_count          = 1          
  min_count           = 1          
  max_count           = 1
  vm_size             = "Standard_B2s"
  kubernetes_version  = "1.32"
}