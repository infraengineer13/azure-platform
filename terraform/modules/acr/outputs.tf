output "id" {
  description = "The ID of the Azure Container Registry"
  value       = azurerm_container_registry.this.id
}

output "name" {
  description = "The name of the Azure Container Registry"
  value       = azurerm_container_registry.this.name
}

output "login_server" {
  description = "The login server of the Azure Container Registry"
  value       = azurerm_container_registry.this.login_server
}

output "resource_group_name" {
  description = "The name of the ACR resource group"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "The ID of the ACR resource group"
  value       = azurerm_resource_group.this.id
}