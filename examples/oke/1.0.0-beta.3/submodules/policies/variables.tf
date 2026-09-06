variable "bastion" {
  description = ""
  type = object({
    bastion_public_ip         = string
    create_bastion            = bool
    enable_instance_principal = bool
    image_operating_system    = string
  })
  default = ""
}

variable "cluster_id" {
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

variable "oci_identity" {
  description = ""
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_ocid     = string
    compartment_name     = string
    tenancy_ocid         = string
    user_ocid            = string
  })
  default = ""
}

variable "oke_kms" {
  description = ""
  type = object({
    use_encryption = bool
    key_id         = string
  })
  default = ""
}

variable "ssh_keys" {
  description = ""
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  default = ""
}
