variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "key_vault_name" {
  description = "Name of the key vault"
  type        = string
}

variable "environment" {
  description = "Stage of environment"
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
}

variable "sku_name" {
  description = "SKU for azure key vault"
  type        = string
  default     = "standard"
}
