resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = var.location

  tags = {
    Project = var.project_name
    Purpose = "identity"
  }
}


resource "azurerm_user_assigned_identity" "this" {
  name                = local.managed_identity_name
  resource_group_name = azurerm_resource_group.this.name
  location            = var.location

  tags = {
    Project = var.project_name
    Purpose = "terraform-identity"
  }
}