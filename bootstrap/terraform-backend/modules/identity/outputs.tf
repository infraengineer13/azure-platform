output "id" {
  value = azurerm_user_assigned_identity.this.id
}

output "client_id" {
  value = azurerm_user_assigned_identity.this.client_id
}

output "principal_id" {
  value = azurerm_user_assigned_identity.this.principal_id
}

output "resource_group_name" {
  description = "Name of the resource group containing the platform managed identities"
  value       = azurerm_resource_group.this.name
}