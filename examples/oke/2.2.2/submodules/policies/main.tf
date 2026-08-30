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
  source         = "oracle-terraform-modules/oke/oci"
  version        = "2.2.2"
  cluster_id     = var.cluster_id
  compartment_id = var.compartment_id
  dynamic_group  = var.dynamic_group
  label_prefix   = var.label_prefix
  oci_provider   = var.oci_provider
  oke_kms        = var.oke_kms
  operator       = var.operator
  ssh_keys       = var.ssh_keys
}
