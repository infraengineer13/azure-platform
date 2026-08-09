output "acr_id" {
  description = "The ID of the platform Azure Container Registry"
  value       = module.acr.id
}

output "acr_name" {
  description = "The name of the platform Azure Container Registry"
  value       = module.acr.name
}

output "acr_login_server" {
  description = "The login server of the platform Azure Container Registry"
  value       = module.acr.login_server
}

output "key_vault_id" {
  description = "The ID of the platform Azure Key Vault"
  value       = module.keyvault.id
}