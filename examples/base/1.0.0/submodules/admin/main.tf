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
  source                 = "oracle-terraform-modules/base/oci"
  version                = "1.0.0"
  oci_admin              = var.oci_admin
  oci_admin_general      = var.oci_admin_general
  oci_admin_identity     = var.oci_admin_identity
  oci_admin_network      = var.oci_admin_network
  oci_admin_notification = var.oci_admin_notification
}
