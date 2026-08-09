locals {
  location_short      = "we"
  resource_group_name = join("-", ["rg", lower(var.project_name), "aks", var.environment, local.location_short])
}