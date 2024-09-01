output "vpc_id" {
  value       = azurerm_virtual_network.vpc.id
  description = "Outputs the id of the vpc"

}
output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "Outputs the id of the subnet"

}
