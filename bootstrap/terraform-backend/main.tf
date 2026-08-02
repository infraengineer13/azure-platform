module "backend" {
  source = "./modules/backend"

  project_name = var.project_name
  location     = var.location
}


module "identity" {
  source = "./modules/identity"

  project_name = var.project_name
  location     = var.location
}