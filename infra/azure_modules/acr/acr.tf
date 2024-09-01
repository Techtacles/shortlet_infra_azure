resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku                 = "Premium"
  admin_enabled       = true
}
