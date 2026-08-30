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
  version           = "1.2.0"
  oci_base_bastion  = var.oci_base_bastion
  oci_base_general  = var.oci_base_general
  oci_base_operator = var.oci_base_operator
  oci_base_provider = var.oci_base_provider
  oci_base_vcn      = var.oci_base_vcn
}
