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

module "base" {
  source            = "oracle-terraform-modules/base/oci"
  version           = "1.1.4"
  oci_base_admin    = var.oci_base_admin
  oci_base_bastion  = var.oci_base_bastion
  oci_base_general  = var.oci_base_general
  oci_base_identity = var.oci_base_identity
  oci_base_vcn      = var.oci_base_vcn
  tagging           = var.tagging
}
