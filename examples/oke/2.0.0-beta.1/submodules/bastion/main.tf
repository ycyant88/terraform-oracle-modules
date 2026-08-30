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
  source                   = "oracle-terraform-modules/oke/oci"
  version                  = "2.0.0-beta.1"
  oci_base_identity        = var.oci_base_identity
  oci_bastion              = var.oci_bastion
  oci_bastion_general      = var.oci_bastion_general
  oci_bastion_infra        = var.oci_bastion_infra
  oci_bastion_notification = var.oci_bastion_notification
}
