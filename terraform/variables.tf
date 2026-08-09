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

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "DNS prefix used for the AKS API server"
  type        = string
}

variable "aks_sku_tier" {
  description = "SKU tier of the AKS cluster"
  type        = string
  default     = "Free"
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS default node pool"
  type        = number
  default     = 1
}

variable "aks_vm_size" {
  description = "VM size used by the AKS default node pool"
  type        = string
  default     = "Standard_B2s"
}


variable "aks_identity_location" {
  description = "Azure region where the AKS managed identity is deployed"
  type        = string
  default     = "northeurope"
}