
resource "azurerm_nat_gateway" "nat_gw" {
  name                = "shortletapp-natgateway"
  location            = var.rg_location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet_nat_gateway_association" "nat_gw_association" {
  subnet_id      = azurerm_subnet.subnet.id
  nat_gateway_id = azurerm_nat_gateway.nat_gw.id
}

resource "azurerm_public_ip" "public_ip" {
  name                = "shortletapp-PIP"
  location            = var.rg_location
  resource_group_name = var.rg_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_nat_gateway_public_ip_association" "nat_pip" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gw.id
  public_ip_address_id = azurerm_public_ip.public_ip.id
}
