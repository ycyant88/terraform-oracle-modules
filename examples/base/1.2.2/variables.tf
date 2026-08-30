variable "oci_base_bastion" {
  description = "bastion host parameters"
  type = object({
    availability_domain   = number
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
    tags                  = map(any)
    timezone              = string
  })
  default = { "availability_domain" : 1, "bastion_access" : "ANYWHERE", "bastion_enabled" : false, "bastion_image_id" : "Autonomous", "bastion_shape" : "", "bastion_upgrade" : true, "netnum" : 13, "newbits" : 32, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "bastion", "ssh_private_key_path" : "", "ssh_public_key_path" : "", "tags" : { "role" : "bastion" }, "timezone" : "Australia/Sydney" }
}

variable "oci_base_general" {
  description = "general oci parameters"
  type = object({
    compartment_id = string
    label_prefix   = string
  })
  default = ""
}

variable "oci_base_operator" {
  description = "operator host parameters"
  type = object({
    availability_domain       = number
    operator_enabled          = bool
    operator_image_id         = string
    operator_shape            = string
    operator_upgrade          = bool
    enable_instance_principal = bool
    netnum                    = number
    newbits                   = number
    notification_enabled      = bool
    notification_endpoint     = string
    notification_protocol     = string
    notification_topic        = string
    ssh_private_key_path      = string
    ssh_public_key_path       = string
    tags                      = map(any)
    timezone                  = string
  })
  default = { "availability_domain" : 1, "enable_instance_principal" : false, "netnum" : 33, "newbits" : 13, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "operator", "operator_enabled" : false, "operator_image_id" : "Oracle", "operator_shape" : "", "operator_upgrade" : true, "ssh_private_key_path" : "", "ssh_public_key_path" : "", "tags" : { "role" : "operator" }, "timezone" : "Australia/Sydney" }
}

variable "oci_base_provider" {
  description = "oci provider parameters"
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    region               = string
    tenancy_id           = string
    user_id              = string
  })
  default = ""
}

variable "oci_base_vcn" {
  description = "VCN parameters"
  type = object({
    internet_gateway_enabled = bool
    nat_gateway_enabled      = bool
    service_gateway_enabled  = bool
    tags                     = map(any)
    vcn_cidr                 = string
    vcn_dns_label            = string
    vcn_name                 = string
  })
  default = { "internet_gateway_enabled" : true, "nat_gateway_enabled" : true, "service_gateway_enabled" : true, "tags" : null, "vcn_cidr" : "10.0.0.0/16", "vcn_dns_label" : "", "vcn_name" : "" }
}
