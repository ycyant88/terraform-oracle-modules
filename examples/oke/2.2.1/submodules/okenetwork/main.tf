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

module "oke" {
  source             = "oracle-terraform-modules/oke/oci"
  version            = "2.2.1"
  compartment_id     = var.compartment_id
  label_prefix       = var.label_prefix
  lb_subnet_type     = var.lb_subnet_type
  oke_network_vcn    = var.oke_network_vcn
  oke_network_worker = var.oke_network_worker
  waf_enabled        = var.waf_enabled
}
