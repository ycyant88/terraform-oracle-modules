variable "bastion_host" {
  description = ""
  type        = string
  default     = ""
}

variable "bastion_user" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_addons" {
  description = ""
  type        = any
  default     = ""
}

variable "cluster_addons_to_remove" {
  description = ""
  type        = any
  default     = ""
}

variable "cluster_id" {
  description = ""
  type        = string
  default     = ""
}

variable "kubernetes_version" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_enabled" {
  description = ""
  type        = bool
  default     = ""
}

variable "operator_host" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_user" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key" {
  description = ""
  type        = string
  default     = ""
}
