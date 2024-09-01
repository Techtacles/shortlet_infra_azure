provider "kubernetes" {
  host                   = data.azurerm_kubernetes_cluster.cluster.kube_config.0.host
  cluster_ca_certificate = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_config.0.cluster_ca_certificate)
  username               = data.azurerm_kubernetes_cluster.cluster.kube_config[0].username
  password               = data.azurerm_kubernetes_cluster.cluster.kube_config[0].password
  client_certificate     = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_config[0].client_certificate)
  client_key             = base64decode(data.azurerm_kubernetes_cluster.cluster.kube_config[0].client_key)
}

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
  subscription_id = var.subscription_id
}
