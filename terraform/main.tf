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

  principal_id = data.terraform_remote_state.bootstrap.outputs.identity_principal_id
  scope        = azurerm_resource_group.platform.id
}

module "keyvault" {
  source = "./modules/keyvault"

  key_vault_name = var.key_vault_name
  environment    = var.environment
  location       = var.keyvault_location
  project_name   = var.project_name
}