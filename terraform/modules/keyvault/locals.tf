locals {
  location_short = "plc"

  resource_group_name = join("-", [
    "rg",
    "platform",
    "keyvault",
    var.environment,
    local.location_short
  ])
}