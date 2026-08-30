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
  source               = "oracle-terraform-modules/olcne/oci"
  version              = "0.1.0"
  olcne_general        = var.olcne_general
  olcne_master         = var.olcne_master
  olcne_master_network = var.olcne_master_network
}
