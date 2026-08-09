variable "principal_id" {
  description = "Managed Identity principal id"
  type        = string
}

variable "scope" {
  description = "RBAC scope"
  type        = string
}

variable "role_definition_name" {
  description = "Role name"
  type        = string
}