data "azurerm_resource_group" "resource_group" {
  name = var.rg_name
}


data "azurerm_kubernetes_cluster" "cluster" {
  name                = var.aks_cluster
  resource_group_name = data.azurerm_resource_group.resource_group.name
}

data "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = data.azurerm_resource_group.resource_group.name
}
