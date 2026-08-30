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
  source                        = "oracle-terraform-modules/oke/oci"
  version                       = "4.1.1"
  bastion_service_access        = var.bastion_service_access
  bastion_service_name          = var.bastion_service_name
  bastion_service_target_subnet = var.bastion_service_target_subnet
  compartment_id                = var.compartment_id
  label_prefix                  = var.label_prefix
  vcn_id                        = var.vcn_id
}
