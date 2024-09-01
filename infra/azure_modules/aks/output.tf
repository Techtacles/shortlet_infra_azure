output "cluster_id" {
  value       = azurerm_kubernetes_cluster.cluster.id
  description = "Outputs the id of the azurem cluster"

}

output "nodepool_id" {
  value       = azurerm_kubernetes_cluster_node_pool.nodepool.id
  description = "Outputs the id of the node pool"

}

output "cluster_object_id" {
  value = azurerm_kubernetes_cluster.cluster.kubelet_identity[0].object_id

}
