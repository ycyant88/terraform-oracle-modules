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

module "observability" {
  source  = "oracle-terraform-modules/observability/oci"
  version = "0.0.2"
}
