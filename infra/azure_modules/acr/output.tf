output "acr_id" {
  value       = azurerm_container_registry.acr.id
  description = "Output of the acr id"

}

output "login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "Outputs the login server for acr"

}

output "admin_username" {
  value       = azurerm_container_registry.acr.admin_password
  description = "Outputs the admin username of the acr"

}

output "admin_password" {
  value       = azurerm_container_registry.acr.admin_password
  description = "Outputs the admin password for the acr"

}
