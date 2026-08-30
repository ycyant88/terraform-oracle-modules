variable "api_fingerprint" {
  description = "fingerprint of oci api private key"
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = "path to oci api private key used"
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the resources created"
  type        = map(any)
  default     = ""
}

variable "internet_gateway_enabled" {
  description = "whether to create the internet gateway"
  type        = bool
  default     = false
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = ""
}

variable "nat_gateway_enabled" {
  description = "whether to create a nat gateway in the vcn"
  type        = bool
  default     = false
}

variable "region" {
  description = "the oci region where resources will be created"
  type        = string
  default     = ""
}

variable "service_gateway_enabled" {
  description = "whether to create a service gateway"
  type        = bool
  default     = false
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
  default     = ""
}

variable "vcn_cidr" {
  description = "cidr block of VCN"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet"
  type        = string
  default     = ""
}

variable "vcn_name" {
  description = "user-friendly name of to use for the vcn to be appended to the label_prefix"
  type        = string
  default     = ""
}
