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
  version              = "3.0.0-RC2"
  api_fingerprint      = var.api_fingerprint
  api_private_key_path = var.api_private_key_path
  cluster_id           = var.cluster_id
  compartment_id       = var.compartment_id
  dynamic_group        = var.dynamic_group
  label_prefix         = var.label_prefix
  oke_kms              = var.oke_kms
  operator             = var.operator
  region               = var.region
  ssh_keys             = var.ssh_keys
  tenancy_id           = var.tenancy_id
  user_id              = var.user_id
}
