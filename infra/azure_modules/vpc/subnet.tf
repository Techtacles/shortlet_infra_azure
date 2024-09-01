resource "azurerm_subnet" "subnet" {
  name                 = "shortletapp-subnet"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.0.1.0/24"]
  depends_on           = [azurerm_virtual_network.vpc]

}
