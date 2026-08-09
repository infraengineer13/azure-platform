variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Stage of environment"
  type        = string
}

variable "location" {
  description = "Azure region where ACR is deployed"
  type        = string
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "sku" {
  description = "SKU of the Azure Container Registry"
  type        = string
  default     = "Standard"
}