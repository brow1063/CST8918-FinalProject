module "aks" {
  source              = "../../modules/aks"
  environment         = "test"
  location            = module.network.location
  resource_group_name = module.network.resource_group_name
  node_count          = 1
  vm_size             = "Standard_B2s"
  kubernetes_version  = "1.32"
}