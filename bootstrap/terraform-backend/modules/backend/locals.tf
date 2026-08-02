locals {

  backend_name = "tfstate"

  region_short = {
    westeurope    = "we"
    northeurope   = "ne"
    polandcentral = "plc"
    uksouth       = "uks"
  }

  location_short = local.region_short[var.location]

  resource_group_name = join("-", ["rg", lower(var.project_name), local.backend_name, local.location_short])

  storage_account_name = join("", ["st", lower(var.project_name), "tf", "001"])

  container_name = local.backend_name
}