moved {
  from = azurerm_resource_group.backend
  to   = module.backend.azurerm_resource_group.backend
}

moved {
  from = azurerm_storage_account.backend
  to   = module.backend.azurerm_storage_account.backend
}

moved {
  from = azurerm_storage_container.backend
  to   = module.backend.azurerm_storage_container.backend
}