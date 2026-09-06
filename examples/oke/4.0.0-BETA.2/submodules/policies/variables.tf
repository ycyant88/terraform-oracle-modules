variable "bastion_public_ip" {
  description = ""
  type        = string
  default     = ""
}

variable "bastion_state" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_id" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "create_bastion_host" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_operator" {
  description = ""
  type        = bool
  default     = ""
}

variable "dynamic_group" {
  description = "name of dynamic group to allow updating dynamic-groups"
  type        = string
  default     = ""
}

variable "key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_instance_principal" {
  description = ""
  type        = bool
  default     = ""
}

variable "operator_private_ip" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "tenancy_id" {
  description = ""
  type        = string
  default     = ""
}

variable "use_encryption" {
  description = ""
  type        = string
  default     = ""
}
