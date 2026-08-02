resource "azurerm_role_assignment" "terraform" {
  scope                = var.scope
  role_definition_name = "Contributor"
  principal_id         = var.principal_id
}