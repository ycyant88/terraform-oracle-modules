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
  source       = "oracle-terraform-modules/observability/oci"
  version      = "0.0.2"
  path         = var.path
  schema_names = var.schema_names
}
