variable "acr_name" {
  type        = string
  description = "The name of the acr repo"
  default     = "shortletacr"

}

variable "nodepool_name" {
  type        = string
  description = "The name of the nodepool"
  default     = "aksnodepool"

}

variable "aks_cluster" {
  type        = string
  description = "The name of the aks cluster"
  default     = "aks_cluster"

}

variable "subscription_id" {
  type        = string
  description = "The subscription id of the azuremaccount"

}

variable "rg_name" {
  type        = string
  description = "The name of the resource group"
  default     = "shortlet-app-rg"

}
