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
  source           = "oracle-terraform-modules/iam/oci"
  version          = "1.0.0"
  tenancy_ocid     = var.tenancy_ocid
  user_create      = var.user_create
  user_description = var.user_description
  user_name        = var.user_name
}
