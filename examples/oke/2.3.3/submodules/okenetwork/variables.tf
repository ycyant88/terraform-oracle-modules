variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "lb_subnet_type" {
  description = ""
  type        = string
  default     = ""
}

variable "oke_network_vcn" {
  description = ""
  type = object({
    ig_route_id  = string
    nat_route_id = string
    netnum       = map(number)
    newbits      = map(number)
    vcn_cidr     = string
    vcn_id       = string
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

variable "waf_enabled" {
  description = ""
  type        = bool
  default     = ""
}
