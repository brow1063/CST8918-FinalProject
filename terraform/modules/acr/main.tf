resource "azurerm_container_registry" "weather_app_acr" {
  name                = "weatherappacr${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.region
  sku                  = "Basic"
  admin_enabled       = true
}

output "acr_name" {
  value = azurerm_container_registry.weather_app_acr.name
}
