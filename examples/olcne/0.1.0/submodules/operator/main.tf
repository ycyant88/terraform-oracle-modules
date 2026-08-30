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

module "olcne" {
  source                  = "oracle-terraform-modules/olcne/oci"
  version                 = "0.1.0"
  container_registry_urls = var.container_registry_urls
  helm_version            = var.helm_version
  loadbalancer_ip_address = var.loadbalancer_ip_address
  oci_provider            = var.oci_provider
  olcne_bastion           = var.olcne_bastion
  olcne_certificate       = var.olcne_certificate
  olcne_environment       = var.olcne_environment
  olcne_general           = var.olcne_general
  olcne_masters           = var.olcne_masters
  olcne_operator          = var.olcne_operator
  olcne_operator_network  = var.olcne_operator_network
  olcne_workers           = var.olcne_workers
  secret_id               = var.secret_id
}
