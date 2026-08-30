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

module "fsdr" {
  source         = "oracle-terraform-modules/fsdr/oci"
  version        = "1.0.5"
  region1_config = var.region1_config
  region2_config = var.region2_config
}
