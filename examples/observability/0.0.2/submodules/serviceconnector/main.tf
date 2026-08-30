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
  source                = "oracle-terraform-modules/observability/oci"
  version               = "0.0.2"
  dynamic_group         = var.dynamic_group
  policy_compartment_id = var.policy_compartment_id
  service_connector_def = var.service_connector_def
  tenancy_ocid          = var.tenancy_ocid
}
