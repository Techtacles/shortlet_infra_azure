variable "rg_name" {
  type        = string
  description = "The name of the resource group"

}

variable "nodepool_name" {
  type        = string
  description = "The name of the nodepool"

}

variable "cluster_name" {
  type        = string
  description = "The name of the aks cluster"

}

variable "subnet_id" {
  type        = string
  description = "The id of the subnet for the pods and node"

}

variable "rg_location" {
  type = string
  description = "Location of RG"
  
}
