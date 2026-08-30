variable "api_fingerprint" {
  description = "fingerprint of oci api private key"
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = "path to oci api private key"
  type        = string
  default     = ""
}

variable "availability_domains" {
  description = "ADs where to provision resources"
  type        = map(any)
  default     = { "bastion" : "1" }
}

variable "bastion_shape" {
  description = "shape of bastion instance"
  type        = string
  default     = "VM.Standard2.1"
}

variable "compartment_name" {
  description = "compartment name"
  type        = string
  default     = ""
}

variable "compartment_ocid" {
  description = "compartment ocid"
  type        = string
  default     = ""
}

variable "create_bastion" {
  description = ""
  type        = string
  default     = false
}

variable "create_nat_gateway" {
  description = "whether to create a nat gateway"
  type        = string
  default     = false
}

variable "create_service_gateway" {
  description = "whether to create a service gateway"
  type        = string
  default     = false
}

variable "disable_auto_retries" {
  description = ""
  type        = string
  default     = true
}

variable "enable_instance_principal" {
  description = "enable the bastion hosts to call OCI API services without requiring api key"
  type        = string
  default     = false
}

variable "image_ocid" {
  description = ""
  type        = string
  default     = "NONE"
}

variable "image_operating_system" {
  description = "operating system to use for the bastion"
  type        = string
  default     = "Oracle Linux"
}

variable "image_operating_system_version" {
  description = "version of selected operating system"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "nat_gateway_name" {
  description = "display name of the nat gateway"
  type        = string
  default     = "nat"
}

variable "newbits" {
  description = "new mask for the subnet within the virtual network. use as newbits parameter for cidrsubnet function"
  type        = map(any)
  default     = { "bastion" : "8" }
}

variable "region" {
  description = "region"
  type        = string
  default     = "us-ashburn-1"
}

variable "service_gateway_name" {
  description = "name of service gateway"
  type        = string
  default     = "object_storage_gateway"
}

variable "ssh_private_key_path" {
  description = "path to ssh private key"
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = "path to ssh public key"
  type        = string
  default     = ""
}

variable "subnets" {
  description = "zero-based index of the subnet when the network is masked with the newbit."
  type        = map(any)
  default     = { "bastion" : "11" }
}

variable "tenancy_ocid" {
  description = "tenancy id"
  type        = string
  default     = ""
}

variable "user_ocid" {
  description = "user ocid"
  type        = string
  default     = ""
}

variable "vcn_cidr" {
  description = "cidr block of VCN"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vcn_dns_name" {
  description = ""
  type        = string
  default     = "baseoci"
}

variable "vcn_name" {
  description = "name of vcn"
  type        = string
  default     = ""
}
