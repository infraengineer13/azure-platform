locals {
  location_short      = "plc"
  resource_group_name = join("-", ["rg", lower(var.project_name), "acr", var.environment, local.location_short])
}