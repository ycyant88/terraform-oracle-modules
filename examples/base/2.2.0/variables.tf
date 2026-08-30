variable "oci_base_bastion" {
  description = "bastion host parameters"
  type = object({
    availability_domain   = number
    bastion_access        = string
    bastion_enabled       = bool
    bastion_image_id      = string
    bastion_shape         = map(any)
    bastion_upgrade       = bool
    netnum                = number
    newbits               = number
    notification_enabled  = bool
    notification_endpoint = string
    notification_protocol = string
    notification_topic    = string
    ssh_private_key_path  = string
    ssh_public_key        = string
    ssh_public_key_path   = string
    tags                  = map(any)
    timezone              = string
  })
  default = { "availability_domain" : 1, "bastion_access" : "ANYWHERE", "bastion_enabled" : false, "bastion_image_id" : "Autonomous", "bastion_shape" : { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E3.Flex" }, "bastion_upgrade" : true, "netnum" : 0, "newbits" : 14, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "bastion", "ssh_private_key_path" : "", "ssh_public_key" : "", "ssh_public_key_path" : "", "tags" : { "role" : "bastion" }, "timezone" : "Australia/Sydney" }
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
    operator_shape            = map(any)
    operating_system_version  = string
    operator_upgrade          = bool
    enable_instance_principal = bool
    netnum                    = number
    newbits                   = number
    notification_enabled      = bool
    notification_endpoint     = string
    notification_protocol     = string
    notification_topic        = string
    ssh_private_key_path      = string
    ssh_public_key            = string
    ssh_public_key_path       = string
    tags                      = map(any)
    timezone                  = string
  })
  default = { "availability_domain" : 1, "enable_instance_principal" : false, "netnum" : 1, "newbits" : 14, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "operator", "operating_system_version" : "8", "operator_enabled" : false, "operator_image_id" : "Oracle", "operator_shape" : { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E3.Flex" }, "operator_upgrade" : true, "ssh_private_key_path" : "", "ssh_public_key" : "", "ssh_public_key_path" : "", "tags" : { "role" : "operator" }, "timezone" : "Australia/Sydney" }
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
    create_drg                   = bool
    drg_display_name             = string
    internet_gateway_enabled     = bool
    lockdown_default_seclist     = bool
    nat_gateway_enabled          = bool
    service_gateway_enabled      = bool
    tags                         = map(any)
    vcn_cidr                     = string
    vcn_dns_label                = string
    vcn_name                     = string
    internet_gateway_route_rules = list(any)
    nat_gateway_route_rules      = list(any)
  })
  default = { "create_drg" : false, "drg_display_name" : "drg", "internet_gateway_enabled" : true, "internet_gateway_route_rules" : [], "lockdown_default_seclist" : true, "nat_gateway_enabled" : true, "nat_gateway_route_rules" : [], "service_gateway_enabled" : true, "tags" : null, "vcn_cidr" : "10.0.0.0/16", "vcn_dns_label" : "", "vcn_name" : "" }
}
