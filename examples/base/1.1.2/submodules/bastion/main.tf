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
  source                   = "oracle-terraform-modules/base/oci"
  version                  = "1.1.2"
  oci_base_identity        = var.oci_base_identity
  oci_bastion              = var.oci_bastion
  oci_bastion_general      = var.oci_bastion_general
  oci_bastion_network      = var.oci_bastion_network
  oci_bastion_notification = var.oci_bastion_notification
}
