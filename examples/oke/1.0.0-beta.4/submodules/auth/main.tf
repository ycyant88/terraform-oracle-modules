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
  source  = "oracle-terraform-modules/oke/oci"
  version = "1.0.0-beta.4"
  ocir    = var.ocir
}
