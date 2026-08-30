variable "oci_base_admin" {
  description = "admin host parameters"
  type = object({
    availability_domains      = number
    admin_enabled             = bool
    admin_image_id            = string
    admin_shape               = string
    admin_upgrade             = bool
    enable_instance_principal = bool
    netnum                    = number
    newbits                   = number
    notification_enabled      = bool
    notification_endpoint     = string
    notification_protocol     = string
    notification_topic        = string
    ssh_private_key_path      = string
    ssh_public_key_path       = string
    timezone                  = string
  })
  default = { "admin_enabled" : false, "admin_image_id" : "Oracle", "admin_shape" : "", "admin_upgrade" : true, "availability_domains" : 1, "enable_instance_principal" : false, "netnum" : 33, "newbits" : 13, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "admin", "ssh_private_key_path" : "", "ssh_public_key_path" : "", "timezone" : "" }
}

variable "oci_base_bastion" {
  description = "bastion host parameters"
  type = object({
    availability_domains  = number
    bastion_access        = string
    bastion_enabled       = bool
    bastion_image_id      = string
    bastion_shape         = string
    bastion_upgrade       = bool
    netnum                = number
    newbits               = number
    notification_enabled  = bool
    notification_endpoint = string
    notification_protocol = string
    notification_topic    = string
    ssh_private_key_path  = string
    ssh_public_key_path   = string
    timezone              = string
  })
  default = { "availability_domains" : 1, "bastion_access" : "ANYWHERE", "bastion_enabled" : false, "bastion_image_id" : "Autonomous", "bastion_shape" : "", "bastion_upgrade" : true, "netnum" : 13, "newbits" : 32, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "bastion", "ssh_private_key_path" : "", "ssh_public_key_path" : "", "timezone" : "" }
}

variable "oci_base_general" {
  description = "general oci parameters"
  type = object({
    label_prefix = string
    region       = string
  })
  default = { "label_prefix" : "", "region" : "" }
}

variable "oci_base_identity" {
  description = "oci identity and provider parameters"
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_id       = string
    tenancy_id           = string
    user_id              = string
  })
  default = ""
}

variable "oci_base_vcn" {
  description = "VCN parameters"
  type = object({
    nat_gateway_enabled     = bool
    service_gateway_enabled = bool
    vcn_cidr                = string
    vcn_dns_label           = string
    vcn_name                = string
  })
  default = { "nat_gateway_enabled" : true, "service_gateway_enabled" : true, "vcn_cidr" : "10.0.0.0/16", "vcn_dns_label" : "", "vcn_name" : "" }
}
