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
  source                = "oracle-terraform-modules/oke/oci"
  version               = "5.0.0-beta.5"
  await_node_readiness  = var.await_node_readiness
  bastion_host          = var.bastion_host
  bastion_user          = var.bastion_user
  expected_node_count   = var.expected_node_count
  ocir_email_address    = var.ocir_email_address
  ocir_secret_id        = var.ocir_secret_id
  ocir_secret_name      = var.ocir_secret_name
  ocir_secret_namespace = var.ocir_secret_namespace
  ocir_username         = var.ocir_username
  operator_host         = var.operator_host
  operator_user         = var.operator_user
  region                = var.region
  ssh_private_key       = var.ssh_private_key
  worker_pools          = var.worker_pools
}
