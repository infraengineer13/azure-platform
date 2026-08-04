moved {
  from = module.keyvault.azurerm_resource_group.keyvault
  to   = module.keyvault.azurerm_resource_group.this
}

moved {
  from = module.keyvault.azurerm_key_vault.keyvault
  to   = module.keyvault.azurerm_key_vault.this
}