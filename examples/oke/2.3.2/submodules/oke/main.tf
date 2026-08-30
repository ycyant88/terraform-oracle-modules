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
  source                  = "oracle-terraform-modules/oke/oci"
  version                 = "2.3.2"
  ad_names                = var.ad_names
  calico                  = var.calico
  check_node_active       = var.check_node_active
  compartment_id          = var.compartment_id
  helm                    = var.helm
  label_prefix            = var.label_prefix
  lbs                     = var.lbs
  metricserver_enabled    = var.metricserver_enabled
  node_pools              = var.node_pools
  node_pools_to_drain     = var.node_pools_to_drain
  nodepool_drain          = var.nodepool_drain
  nodepool_upgrade_method = var.nodepool_upgrade_method
  oke_cluster             = var.oke_cluster
  oke_ocir                = var.oke_ocir
  oke_operator            = var.oke_operator
  oke_ssh_keys            = var.oke_ssh_keys
  region                  = var.region
  service_account         = var.service_account
}
