variable "allow_node_port_access" {
  description = ""
  type        = bool
  default     = ""
}

variable "allow_worker_internet_access" {
  description = ""
  type        = bool
  default     = ""
}

variable "allow_worker_ssh_access" {
  description = ""
  type        = bool
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "control_plane_access" {
  description = ""
  type        = string
  default     = ""
}

variable "control_plane_access_source" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "enable_waf" {
  description = ""
  type        = bool
  default     = ""
}

variable "ig_route_id" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "lb_type" {
  description = ""
  type        = string
  default     = ""
}

variable "nat_route_id" {
  description = ""
  type        = string
  default     = ""
}

variable "public_lb_ports" {
  description = ""
  type        = list(number)
  default     = ""
}

variable "subnets" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "vcn_id" {
  description = ""
  type        = string
  default     = ""
}

variable "worker_mode" {
  description = ""
  type        = string
  default     = ""
}
