output "identity_client_id" {
  description = "Client ID of Terraform managed identity"
  value       = module.identity.client_id
}

output "identity_principal_id" {
  description = "Principal ID of Terraform managed identity"
  value       = module.identity.principal_id
}

output "identity_id" {
  description = "Resource ID of Terraform managed identity"
  value       = module.identity.id
}