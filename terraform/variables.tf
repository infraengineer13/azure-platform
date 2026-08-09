variable "project_name" {
  description = "Name of the project"
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

variable "key_vault_name" {
  description = "Name of Key Vault"
  type        = string
}

variable "keyvault_location" {
  description = "Azure region for Key Vault"
  type        = string
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}