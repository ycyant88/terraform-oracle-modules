variable "oci_base_identity" {
  description = "parameters related to oci identity"
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_id       = string
    tenancy_id           = string
    user_id              = string
  })
  default = ""
}

variable "oci_bastion" {
  description = "bastion host parameters"
  type = object({
    bastion_access      = string
    bastion_image_id    = string
    bastion_shape       = string
    bastion_upgrade     = bool
    bastion_enabled     = bool
    ssh_public_key_path = string
    timezone            = string
    use_autonomous      = bool
  })
  default = ""
}

variable "oci_bastion_general" {
  description = "general oci parameters"
  type = object({
    home_region  = string
    label_prefix = string
    region       = string
  })
  default = ""
}

variable "oci_bastion_infra" {
  description = "bastion host networking parameters"
  type = object({
    ad_names             = list(string)
    availability_domains = number
    ig_route_id          = string
    netnum               = number
    newbits              = number
    vcn_cidr             = string
    vcn_id               = string
  })
  default = ""
}

variable "oci_bastion_notification" {
  description = "OCI notification parameters for bastion"
  type = object({
    notification_enabled  = bool
    notification_endpoint = string
    notification_protocol = string
    notification_topic    = string
  })
  default = ""
}
