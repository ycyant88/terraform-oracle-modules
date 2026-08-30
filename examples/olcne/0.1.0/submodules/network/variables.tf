variable "olcne_general" {
  description = ""
  type = object({
    ad_names       = list(string)
    compartment_id = string
    label_prefix   = string
  })
  default = ""
}

variable "olcne_network_access" {
  description = ""
  type = object({
    allow_master_ssh_access = bool
    allow_worker_ssh_access = bool
  })
  default = ""
}

variable "olcne_network_vcn" {
  description = ""
  type = object({
    ig_route_id                = string
    is_service_gateway_enabled = bool
    nat_route_id               = string
    netnum                     = map(number)
    newbits                    = map(number)
    vcn_cidr                   = string
    vcn_id                     = string
  })
  default = ""
}
