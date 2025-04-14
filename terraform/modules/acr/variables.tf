variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "region" {
  description = "The Azure region where the ACR will be located"
  type        = string
}

variable "environment" {
  description = "The environment (prod/test/dev)"
  type        = string
}
