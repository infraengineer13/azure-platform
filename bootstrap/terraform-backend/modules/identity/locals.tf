locals {

  identity_name = "identity"

  region_short = {
    westeurope    = "we"
    northeurope   = "ne"
    polandcentral = "plc"
    uksouth       = "uks"
  }

  location_short = local.region_short[var.location]

  resource_group_name = join("-", [
    "rg",
    lower(var.project_name),
    local.identity_name,
    local.location_short
  ])

  managed_identity_name = join("-", [
    "mi",
    lower(var.project_name),
    "tf"
  ])
}