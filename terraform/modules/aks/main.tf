resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "${var.environment}-aks"
  location            = var.region
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.environment}-aks"
  kubernetes_version  = "1.32"

  default_node_pool {
    name                = "default"
    vm_size             = "Standard_B2s"
    enable_auto_scaling = var.enable_auto_scaling
    node_count          = var.node_count
    min_count           = var.min_count
    max_count           = var.max_count
  }

  identity {
    type = "SystemAssigned"
  }
}