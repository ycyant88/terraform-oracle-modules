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
  version            = "2.1.3"
  compartment_id     = var.compartment_id
  lb_subnet_type     = var.lb_subnet_type
  oke_general        = var.oke_general
  oke_network_vcn    = var.oke_network_vcn
  oke_network_worker = var.oke_network_worker
}
