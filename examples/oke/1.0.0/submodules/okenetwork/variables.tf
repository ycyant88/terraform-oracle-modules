variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "lb_subnet_type" {
  description = ""
  type        = string
  default     = ""
}

variable "oke_general" {
  description = ""
  type = object({
    ad_names     = list(string)
    label_prefix = string
    region       = string
  })
  default = ""
}

variable "oke_network_vcn" {
  description = ""
  type = object({
    ig_route_id                = string
    is_service_gateway_enabled = bool
    nat_route_id               = string
    newbits                    = map(number)
    subnets                    = map(number)
    vcn_cidr                   = string
    vcn_id                     = string
  })
  default = ""
}

variable "oke_network_worker" {
  description = ""
  type = object({
    allow_node_port_access  = bool
    allow_worker_ssh_access = bool
    worker_mode             = string
  })
  default = ""
}
