terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "8.29.0"
    }
  }
}

provider "oci" {
  # Configuration options
}

module "vcn" {
  source                       = "oracle-terraform-modules/vcn/oci"
  version                      = "2.2.0"
  compartment_id               = var.compartment_id
  create_drg                   = var.create_drg
  drg_display_name             = var.drg_display_name
  internet_gateway_enabled     = var.internet_gateway_enabled
  internet_gateway_route_rules = var.internet_gateway_route_rules
  label_prefix                 = var.label_prefix
  lockdown_default_seclist     = var.lockdown_default_seclist
  nat_gateway_enabled          = var.nat_gateway_enabled
  nat_gateway_route_rules      = var.nat_gateway_route_rules
  region                       = var.region
  service_gateway_enabled      = var.service_gateway_enabled
  tags                         = var.tags
  vcn_cidr                     = var.vcn_cidr
  vcn_dns_label                = var.vcn_dns_label
  vcn_name                     = var.vcn_name
}
