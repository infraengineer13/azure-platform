output "id" {
  description = "The Azure Resource ID of the User Assigned Managed Identity"
  value       = azurerm_user_assigned_identity.this.id
}

output "client_id" {
  description = "The client ID of the User Assigned Managed Identity"
  value       = azurerm_user_assigned_identity.this.client_id
}

output "principal_id" {
  description = "The Microsoft Entra object ID used for RBAC assignments"
  value       = azurerm_user_assigned_identity.this.principal_id
}