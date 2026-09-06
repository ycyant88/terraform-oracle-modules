variable "ad_names" {
  description = ""
  type        = list(any)
  default     = ""
}

variable "api_fingerprint" {
  description = ""
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "availability_domains" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "bastion_shape" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_ocid" {
  description = ""
  type        = string
  default     = ""
}

variable "create_bastion" {
  description = ""
  type        = string
  default     = ""
}

variable "ig_route_id" {
  description = ""
  type        = string
  default     = ""
}

variable "image_ocid" {
  description = ""
  type        = string
  default     = ""
}

variable "image_operating_system" {
  description = ""
  type        = string
  default     = ""
}

variable "image_operating_system_version" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "newbits" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "subnets" {
  description = ""
  type        = map(any)
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
