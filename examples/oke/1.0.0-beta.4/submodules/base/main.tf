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
  source            = "oracle-terraform-modules/oke/oci"
  version           = "1.0.0-beta.4"
  oci_base_bastion  = var.oci_base_bastion
  oci_base_general  = var.oci_base_general
  oci_base_identity = var.oci_base_identity
  oci_base_ssh_keys = var.oci_base_ssh_keys
  oci_base_vcn      = var.oci_base_vcn
}
