variable "oci_base_bastion" {
  description = ""
  type = object({
    newbits                   = number
    subnets                   = number
    bastion_shape             = string
    create_bastion            = bool
    bastion_access            = string
    enable_instance_principal = bool
    image_id                  = string
    availability_domains      = number
    package_upgrade           = bool
  })
  default = ""
}

variable "oci_base_general" {
  description = ""
  type = object({
    disable_auto_retries = bool
    label_prefix         = string
    region               = string
  })
  default = ""
}

variable "oci_base_identity" {
  description = ""
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_id       = string
    compartment_name     = string
    tenancy_id           = string
    user_id              = string
  })
  default = ""
}

variable "oci_base_ssh_keys" {
  description = ""
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  default = ""
}

variable "oci_base_vcn" {
  description = ""
  type = object({
    vcn_cidr               = string
    vcn_dns_label          = string
    vcn_name               = string
    create_nat_gateway     = bool
    nat_gateway_name       = string
    create_service_gateway = bool
    service_gateway_name   = string
  })
  default = ""
}
