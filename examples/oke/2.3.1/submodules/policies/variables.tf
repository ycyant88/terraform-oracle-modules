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

variable "dynamic_group" {
  description = "name of dynamic group to allow updating dynamic-groups"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "oke_kms" {
  description = ""
  type = object({
    use_encryption = bool
    key_id         = string
  })
  default = ""
}

variable "operator" {
  description = ""
  type = object({
    bastion_public_ip           = string
    operator_private_ip         = string
    bastion_enabled             = bool
    operator_enabled            = bool
    operator_instance_principal = bool
  })
  default = ""
}

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_keys" {
  description = ""
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  default = ""
}

variable "tenancy_id" {
  description = ""
  type        = string
  default     = ""
}
