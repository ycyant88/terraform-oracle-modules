variable "allow_bastion_cluster_access" {
  description = ""
  type        = bool
  default     = ""
}

variable "allow_node_port_access" {
  description = ""
  type        = bool
  default     = ""
}

variable "allow_pod_internet_access" {
  description = ""
  type        = bool
  default     = ""
}

variable "allow_rules_cp" {
  description = ""
  type        = any
  default     = ""
}

variable "allow_rules_internal_lb" {
  description = ""
  type        = any
  default     = ""
}

variable "allow_rules_pods" {
  description = ""
  type        = any
  default     = ""
}

variable "allow_rules_public_lb" {
  description = ""
  type        = any
  default     = ""
}

variable "allow_rules_workers" {
  description = ""
  type        = any
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

variable "assign_dns" {
  description = ""
  type        = bool
  default     = ""
}

variable "bastion_allowed_cidrs" {
  description = ""
  type        = set(string)
  default     = ""
}

variable "bastion_is_public" {
  description = ""
  type        = bool
  default     = ""
}

variable "cni_type" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "control_plane_allowed_cidrs" {
  description = ""
  type        = set(string)
  default     = ""
}

variable "control_plane_is_public" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_bastion" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_cluster" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_internet_gateway" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_nat_gateway" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_operator" {
  description = ""
  type        = bool
  default     = ""
}

variable "defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "drg_attachments" {
  description = ""
  type        = any
  default     = ""
}

variable "enable_dual_stack_defaults" {
  description = ""
  type        = bool
  default     = ""
}

variable "enable_waf" {
  description = ""
  type        = bool
  default     = ""
}

variable "freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "ig_route_table_id" {
  description = ""
  type        = string
  default     = ""
}

variable "igw_ngw_mixed_route_id" {
  description = ""
  type        = string
  default     = ""
}

variable "internet_gateway_id" {
  description = ""
  type        = string
  default     = ""
}

variable "load_balancers" {
  description = ""
  type        = string
  default     = ""
}

variable "nat_gateway_id" {
  description = ""
  type        = string
  default     = ""
}

variable "nat_route_table_id" {
  description = ""
  type        = string
  default     = ""
}

variable "nsgs" {
  description = ""
  type = map(object({
    create = optional(string)
    id     = optional(string)
    rules  = optional(map(map(string)))
  }))
  default = ""
}

variable "state_id" {
  description = ""
  type        = string
  default     = ""
}

variable "subnets" {
  description = ""
  type = map(object({
    create       = optional(string)
    id           = optional(string)
    newbits      = optional(string)
    netnum       = optional(string)
    cidr         = optional(string)
    display_name = optional(string)
    dns_label    = optional(string)
    ipv6_cidr    = optional(string)
    ipv4_cidrs   = optional(list(string), [])
    ipv6_cidrs   = optional(list(string), [])
    is_public    = optional(bool, false)
  }))
  default = ""
}

variable "tag_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "use_defined_tags" {
  description = ""
  type        = bool
  default     = ""
}

variable "use_stateless_rules" {
  description = ""
  type        = bool
  default     = ""
}

variable "vcn_cidrs" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "vcn_id" {
  description = ""
  type        = string
  default     = ""
}

variable "vcn_ipv6_cidrs" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "worker_is_public" {
  description = ""
  type        = bool
  default     = ""
}
