variable "await_node_readiness" {
  description = ""
  type        = string
  default     = ""
}

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

variable "expected_drain_count" {
  description = ""
  type        = number
  default     = ""
}

variable "expected_node_count" {
  description = ""
  type        = number
  default     = ""
}

variable "ocir_email_address" {
  description = ""
  type        = string
  default     = ""
}

variable "ocir_secret_id" {
  description = ""
  type        = string
  default     = ""
}

variable "ocir_secret_name" {
  description = ""
  type        = string
  default     = ""
}

variable "ocir_secret_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "ocir_username" {
  description = ""
  type        = string
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

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key" {
  description = ""
  type        = string
  default     = ""
}

variable "worker_drain_delete_local_data" {
  description = ""
  type        = bool
  default     = ""
}

variable "worker_drain_ignore_daemonsets" {
  description = ""
  type        = bool
  default     = ""
}

variable "worker_drain_timeout_seconds" {
  description = ""
  type        = number
  default     = ""
}

variable "worker_pools" {
  description = ""
  type        = any
  default     = ""
}
