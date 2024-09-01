terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaterg"
    storage_account_name = "shortletapptfstate"
    container_name       = "tfstate-container"
    key                  = "kube_infra/terraform.tfstate"


  }
}
