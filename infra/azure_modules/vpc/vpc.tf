resource "azurerm_virtual_network" "vpc" {
  name                = "shortletapp-vpc"
  address_space       = ["10.0.0.0/16"]
  location            = var.rg_location
  resource_group_name = var.rg_name
}
