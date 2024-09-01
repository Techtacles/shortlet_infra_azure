resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix          = "shortletapp"

  default_node_pool {
    name       = "defaultnp"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }


}
