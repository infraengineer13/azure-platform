resource "azurerm_resource_group" "platform" {
  name     = local.resource_group_name
  location = var.location
  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}

module "rbac" {
  source = "./modules/rbac"

  principal_id         = data.terraform_remote_state.bootstrap.outputs.identity_principal_id
  scope                = azurerm_resource_group.platform.id
  role_definition_name = "Contributor"
}

module "keyvault" {
  source = "./modules/keyvault"

  key_vault_name = var.key_vault_name
  environment    = var.environment
  location       = var.keyvault_location
  project_name   = var.project_name
}

module "keyvault_rbac" {
  source = "./modules/rbac"

  principal_id         = data.terraform_remote_state.bootstrap.outputs.identity_principal_id
  scope                = module.keyvault.id
  role_definition_name = "Key Vault Administrator"
}

module "acr" {
  source = "./modules/acr"

  project_name = var.project_name
  environment  = var.environment
  location     = var.keyvault_location
  acr_name     = var.acr_name
}

module "acr_rbac" {
  source = "./modules/rbac"

  principal_id         = data.terraform_remote_state.bootstrap.outputs.identity_principal_id
  scope = module.acr.resource_group_id
  role_definition_name = "Contributor"
}

module "acr_pull" {
  source = "./modules/rbac"

  principal_id         = data.terraform_remote_state.bootstrap.outputs.identity_principal_id
  scope                = module.acr.id
  role_definition_name = "AcrPull"
}