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
  source                 = "oracle-terraform-modules/oke/oci"
  version                = "2.0.0-beta.1"
  oci_admin              = var.oci_admin
  oci_admin_general      = var.oci_admin_general
  oci_admin_identity     = var.oci_admin_identity
  oci_admin_network      = var.oci_admin_network
  oci_admin_notification = var.oci_admin_notification
}
