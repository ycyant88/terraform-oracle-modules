variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "create_drg" {
  description = "whether to create Dynamic Routing Gateway. If set to true, creates a Dynamic Routing Gateway and attach it to the vcn."
  type        = bool
  default     = false
}

variable "drg_display_name" {
  description = "(Updatable) Name of Dynamic Routing Gateway. Does not have to be unique."
  type        = string
  default     = ""
}

variable "internet_gateway_enabled" {
  description = "whether to create the internet gateway in the vcn. If set to true, creates an Internet Gateway."
  type        = bool
  default     = false
}

variable "internet_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to Internet Gateway Route Table"
  type = list(object({
    destination       = string
    destination_type  = string
    network_entity_id = string
    description       = string
  }))
  default = ""
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "none"
}

variable "lockdown_default_seclist" {
  description = "whether to remove all default security rules from the VCN Default Security List"
  type        = bool
  default     = true
}

variable "nat_gateway_enabled" {
  description = "whether to create a nat gateway in the vcn. If set to true, creates a nat gateway."
  type        = bool
  default     = false
}

variable "nat_gateway_public_ip_id" {
  description = "OCID of reserved IP address for NAT gateway. The reserved public IP address needs to be manually created."
  type        = string
  default     = "none"
}

variable "nat_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to NAT Gateway Route Table"
  type = list(object({
    destination       = string
    destination_type  = string
    network_entity_id = string
    description       = string
  }))
  default = ""
}

variable "region" {
  description = "the OCI region where resources will be created"
  type        = string
  default     = ""
}

variable "service_gateway_enabled" {
  description = "whether to create a service gateway. If set to true, creates a service gateway."
  type        = bool
  default     = false
}

variable "tags" {
  description = "simple key-value pairs to tag the resources created using freeform tags."
  type        = map(any)
  default     = { "module" : "oracle-terraform-modules/vcn/oci", "terraformed" : "yes" }
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
