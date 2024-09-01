resource "azurerm_kubernetes_cluster_node_pool" "nodepool" {
  name                  = var.nodepool_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1
  depends_on            = [azurerm_kubernetes_cluster.cluster]

}
