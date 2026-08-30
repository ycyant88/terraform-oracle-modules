variable "oci_base_identity" {
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

variable "oci_base_ssh_keys" {
  description = ""
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  default = ""
}

variable "oci_bastion" {
  description = ""
  type = object({
    bastion_shape                  = string
    create_bastion                 = bool
    bastion_access                 = string
    enable_instance_principal      = bool
    image_ocid                     = string
    image_operating_system         = string
    image_operating_system_version = string
    package_update                 = bool
    package_upgrade                = bool
  })
  default = ""
}

variable "oci_bastion_general" {
  description = ""
  type = object({
    label_prefix = string
    home_region  = string
    region       = string
  })
  default = ""
}

variable "oci_bastion_infra" {
  description = ""
  type = object({
    ig_route_id          = string
    vcn_cidr             = string
    vcn_id               = string
    ad_names             = list(string)
    newbits              = number
    subnets              = number
    availability_domains = number
  })
  default = ""
}
