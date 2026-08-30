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
  source               = "oracle-terraform-modules/oke/oci"
  version              = "0.11.0"
  api_fingerprint      = var.api_fingerprint
  api_private_key_path = var.api_private_key_path
  compartment_ocid     = var.compartment_ocid
  create_auth_token    = var.create_auth_token
  home_region          = var.home_region
  tenancy_ocid         = var.tenancy_ocid
  user_ocid            = var.user_ocid
}
