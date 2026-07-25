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