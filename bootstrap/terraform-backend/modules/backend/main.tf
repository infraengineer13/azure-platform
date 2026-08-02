resource "azurerm_resource_group" "backend" {
  name     = local.resource_group_name
  location = var.location

  tags = {
    Project = var.project_name
    Purpose = local.backend_name
  }
}

resource "azurerm_storage_account" "backend" {
  name                = local.storage_account_name
  resource_group_name = azurerm_resource_group.backend.name
  location            = azurerm_resource_group.backend.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_nested_items_to_be_public = false
  public_network_access_enabled   = true

  https_traffic_only_enabled = true
  min_tls_version            = "TLS1_2"

  blob_properties {
    versioning_enabled = true
  }
}

resource "azurerm_storage_container" "backend" {
  name                  = local.container_name
  storage_account_id    = azurerm_storage_account.backend.id
  container_access_type = "private"
}