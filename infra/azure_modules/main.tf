###### AZURE INFRA MODULES ######

module "vpc" {
  source      = "./vpc"
  rg_name     = azurerm_resource_group.rg.name
  rg_location = azurerm_resource_group.rg.location

}

module "acr" {
  source      = "./acr"
  rg_location = azurerm_resource_group.rg.location
  rg_name     = azurerm_resource_group.rg.name
  acr_name    = var.acr_name

}

module "aks" {
  source        = "./aks"
  rg_name       = azurerm_resource_group.rg.name
  rg_location   = azurerm_resource_group.rg.location
  cluster_name  = var.aks_cluster
  nodepool_name = var.nodepool_name
  subnet_id     = module.vpc.subnet_id

}

resource "azurerm_role_assignment" "role_assignement" {
  principal_id                     = module.aks.cluster_object_id
  role_definition_name             = "AcrPull"
  scope                            = module.acr.acr_id
  skip_service_principal_aad_check = true
}
