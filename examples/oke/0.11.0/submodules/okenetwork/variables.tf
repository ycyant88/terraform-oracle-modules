variable "ad_names" {
  description = ""
  type        = list(any)
  default     = ""
}

variable "availability_domains" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "compartment_ocid" {
  description = ""
  type        = string
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

variable "nat_route_id" {
  description = ""
  type        = string
  default     = ""
}

variable "newbits" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "subnets" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "tenancy_ocid" {
  description = ""
  type        = string
  default     = ""
}

variable "vcn_cidr" {
  description = ""
  type        = string
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
