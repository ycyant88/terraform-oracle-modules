variable "availability_domain" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "fss_mount_path" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "max_fs_stat_bytes" {
  description = ""
  type        = string
  default     = ""
}

variable "max_fs_stat_files" {
  description = ""
  type        = string
  default     = ""
}

variable "nat_route_id" {
  description = ""
  type        = string
  default     = ""
}

variable "subnets" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "tenancy_id" {
  description = ""
  type        = string
  default     = ""
}

variable "vcn_id" {
  description = "(optional) describe your variable"
  type        = string
  default     = ""
}
