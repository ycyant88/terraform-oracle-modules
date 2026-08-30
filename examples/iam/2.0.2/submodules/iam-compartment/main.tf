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

module "iam" {
  source                  = "oracle-terraform-modules/iam/oci"
  version                 = "2.0.2"
  compartment_create      = var.compartment_create
  compartment_description = var.compartment_description
  compartment_id          = var.compartment_id
  compartment_name        = var.compartment_name
  enable_delete           = var.enable_delete
  tenancy_ocid            = var.tenancy_ocid
}
