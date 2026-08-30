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
  source                        = "oracle-terraform-modules/vcn/oci"
  version                       = "3.3.0"
  attached_drg_id               = var.attached_drg_id
  compartment_id                = var.compartment_id
  create_drg                    = var.create_drg
  create_internet_gateway       = var.create_internet_gateway
  create_nat_gateway            = var.create_nat_gateway
  create_rpc                    = var.create_rpc
  create_service_gateway        = var.create_service_gateway
  defined_tags                  = var.defined_tags
  drg_display_name              = var.drg_display_name
  drg_rpc_acceptor_id           = var.drg_rpc_acceptor_id
  drg_rpc_acceptor_region       = var.drg_rpc_acceptor_region
  enable_ipv6                   = var.enable_ipv6
  freeform_tags                 = var.freeform_tags
  internet_gateway_display_name = var.internet_gateway_display_name
  internet_gateway_route_rules  = var.internet_gateway_route_rules
  label_prefix                  = var.label_prefix
  local_peering_gateways        = var.local_peering_gateways
  lockdown_default_seclist      = var.lockdown_default_seclist
  nat_gateway_display_name      = var.nat_gateway_display_name
  nat_gateway_public_ip_id      = var.nat_gateway_public_ip_id
  nat_gateway_route_rules       = var.nat_gateway_route_rules
  region                        = var.region
  service_gateway_display_name  = var.service_gateway_display_name
  vcn_cidrs                     = var.vcn_cidrs
  vcn_dns_label                 = var.vcn_dns_label
  vcn_name                      = var.vcn_name
}
