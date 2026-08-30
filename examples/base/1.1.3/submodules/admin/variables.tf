variable "oci_admin" {
  description = "admin host parameters"
  type = object({
    admin_image_id            = string
    admin_shape               = string
    admin_upgrade             = bool
    admin_enabled             = bool
    enable_instance_principal = bool
    ssh_private_key_path      = string
    ssh_public_key_path       = string
    timezone                  = string
  })
  default = ""
}

variable "oci_admin_bastion" {
  description = ""
  type = object({
    bastion_ip           = string
    ssh_private_key_path = string
  })
  default = ""
}

variable "oci_admin_general" {
  description = "general oci parameters"
  type = object({
    home_region  = string
    label_prefix = string
    region       = string
  })
  default = ""
}

variable "oci_admin_identity" {
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

variable "oci_admin_network" {
  description = "admin host networking parameters"
  type = object({
    ad_names             = list(string)
    availability_domains = number
    nat_route_id         = string
    netnum               = number
    newbits              = number
    vcn_cidr             = string
    vcn_id               = string
  })
  default = ""
}

variable "oci_admin_notification" {
  description = "OCI notification parameters for admin"
  type = object({
    notification_enabled  = bool
    notification_endpoint = string
    notification_protocol = string
    notification_topic    = string
  })
  default = ""
}

variable "tagging" {
  description = ""
  type = object({
    computetag = map(any)
    networktag = map(any)
  })
  default = ""
}
