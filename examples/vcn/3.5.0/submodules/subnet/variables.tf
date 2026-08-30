variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the resources created using defined tags."
  type        = map(string)
  default     = null
}

variable "enable_ipv6" {
  description = "Enable IPV6"
  type        = bool
  default     = false
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default     = { "module" : "oracle-terraform-modules/vcn/oci", "terraformed" : "Please do not edit manually" }
}

variable "ig_route_id" {
  description = "Internet Gateway route table id"
  type        = string
  default     = ""
}

variable "nat_route_id" {
  description = "NAT Gateway route table id"
  type        = string
  default     = ""
}

variable "subnets" {
  description = "Subnets to be created"
  type        = any
  default     = {}
}

variable "vcn_id" {
  description = "VCN ID"
  type        = string
  default     = ""
}
