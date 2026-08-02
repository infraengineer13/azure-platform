data "terraform_remote_state" "bootstrap" {
  backend = "azurerm"

  config = {
    resource_group_name  = "rg-platform-tfstate-ne"
    storage_account_name = "stplatformtf001"
    container_name       = "tfstate"
    key                  = "bootstrap.tfstate"
  }
}