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
  source                     = "oracle-terraform-modules/vcn/oci"
  version                    = "4.0.0"
  compartment_id             = var.compartment_id
  defined_tags               = var.defined_tags
  enable_ipv6                = var.enable_ipv6
  freeform_tags              = var.freeform_tags
  ig_route_id                = var.ig_route_id
  nat_ipv4_igw_ipv6_route_id = var.nat_ipv4_igw_ipv6_route_id
  nat_route_id               = var.nat_route_id
  subnets                    = var.subnets
  tenancy_id                 = var.tenancy_id
  vcn_id                     = var.vcn_id
}
