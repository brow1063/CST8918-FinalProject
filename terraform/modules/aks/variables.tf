variable "environment" {
  type        = string
  description = "Environment (prod/test/dev)"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "region" {
  type        = string
  description = "Azure region"
}

variable "node_count" {
  type        = number
  default     = 1
  description = "Static node count (if not autoscaling)"
}

variable "enable_auto_scaling" {
  type        = bool
  default     = false
  description = "Enable autoscaling?"
}

variable "min_count" {
  type        = number
  default     = 1
  description = "Min nodes (if autoscaling)"
}

variable "max_count" {
  type        = number
  default     = 3
  description = "Max nodes (if autoscaling)"
}