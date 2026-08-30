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
  version                 = "1.0.3"
  compartment_create      = var.compartment_create
  compartment_description = var.compartment_description
  compartment_name        = var.compartment_name
  tenancy_ocid            = var.tenancy_ocid
}
