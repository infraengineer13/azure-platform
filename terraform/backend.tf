terraform {
  backend "azurerm" {
    resource_group_name  = "rg-platform-tfstate-ne"
    storage_account_name = "stplatformtf001"
    container_name       = "tfstate"
    key                  = "platform-dev.tfstate"
  }
}