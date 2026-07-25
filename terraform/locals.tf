locals {
  location_short      = "we"
  resource_group_name = join("-", ["rg", lower(var.project_name), var.environment, local.location_short])
}