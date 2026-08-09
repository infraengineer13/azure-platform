variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Stage of environment"
  type        = string
}

variable "location" {
  description = "Azure region where AKS is deployed"
  type        = string
}

variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix used for the AKS API server"
  type        = string
}

variable "sku_tier" {
  description = "SKU tier of the AKS cluster"
  type        = string
  default     = "Free"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size used by the AKS node pool"
  type        = string
  default     = "Standard_B2s"
}

variable "identity_id" {
  description = "Resource ID of the User Assigned Managed Identity used by AKS"
  type        = string
}

output "resource_group_name" {
  description = "The name of the AKS resource group"
  value       = azurerm_resource_group.this.name
}