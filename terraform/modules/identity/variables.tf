variable "name" {
  description = "Name of the User Assigned Managed Identity"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where the Managed Identity will be created"
  type        = string
}

variable "location" {
  description = "Azure region where the Managed Identity will be deployed"
  type        = string
}

variable "environment" {
  description = "Stage of environment"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

