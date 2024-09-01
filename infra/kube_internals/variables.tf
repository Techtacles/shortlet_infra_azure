variable "rg_name" {
  type        = string
  description = "The name of the resource group"
  default     = "shortlet-app-rg"

}


variable "aks_cluster" {
  type        = string
  description = "The name of the aks cluster"
  default     = "aks_cluster"

}

variable "subscription_id" {
  type        = string
  description = "The subscription id"

}

variable "deployment_name" {
  type        = string
  description = "The name of your deployment"
  default     = "shortlet-deployment"

}

variable "svc_name" {
  type        = string
  description = "The name of the svc"
  default     = "shortlet-svc"

}

variable "acr_name" {
  type        = string
  description = "The name of the acr registry"
  default     = "shortletacr"

}
