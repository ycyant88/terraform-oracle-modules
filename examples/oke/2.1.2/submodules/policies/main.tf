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
  source        = "oracle-terraform-modules/oke/oci"
  version       = "2.1.2"
  admin         = var.admin
  cluster_id    = var.cluster_id
  dynamic_group = var.dynamic_group
  label_prefix  = var.label_prefix
  oci_identity  = var.oci_identity
  oke_kms       = var.oke_kms
  ssh_keys      = var.ssh_keys
}
