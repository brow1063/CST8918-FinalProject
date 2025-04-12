resource "azurerm_resource_group" "tfstate" {
  name     = "tfstate-final-${var.environment}"
  location = var.region
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstatestorage"
  resource_group_name      = azurerm_resource_group.tfstate.name
  location                 = azurerm_resource_group.tfstate.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate-{var.environment}"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "private"
}