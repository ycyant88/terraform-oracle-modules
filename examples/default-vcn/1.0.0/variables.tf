variable "compartment_ocid" {
  description = "Compartment's OCID where VCN will be created. "
  type = 
  default = ""
}

variable "subnet_dns_label" {
  description = "A DNS label prefix for the subnet, used in conjunction with the VNIC's hostname and VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. "
  type = 
  default = "subnet"
}

variable "vcn_cidr" {
  description = "A VCN covers a single, contiguous IPv4 CIDR block of your choice. "
  type = 
  default = "10.0.0.0/16"
}

variable "vcn_display_name" {
  description = "Name of Virtual Cloud Network. "
  type = 
  default = ""
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. "
  type = 
  default = "vcn"
}
