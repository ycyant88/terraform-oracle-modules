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
  version              = "2.1.6"
  calico               = var.calico
  helm                 = var.helm
  install_metricserver = var.install_metricserver
  lbs                  = var.lbs
  node_pools           = var.node_pools
  oke_admin            = var.oke_admin
  oke_cluster          = var.oke_cluster
  oke_general          = var.oke_general
  oke_identity         = var.oke_identity
  oke_ocir             = var.oke_ocir
  oke_ssh_keys         = var.oke_ssh_keys
  service_account      = var.service_account
}
