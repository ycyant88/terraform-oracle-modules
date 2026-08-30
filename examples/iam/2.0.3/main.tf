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
  source  = "oracle-terraform-modules/iam/oci"
  version = "2.0.3"
}
