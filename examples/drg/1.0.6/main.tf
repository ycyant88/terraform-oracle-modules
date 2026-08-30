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

module "drg" {
  source                     = "oracle-terraform-modules/drg/oci"
  version                    = "1.0.6"
  compartment_id             = var.compartment_id
  defined_tags               = var.defined_tags
  drg_compartment_id         = var.drg_compartment_id
  drg_display_name           = var.drg_display_name
  drg_id                     = var.drg_id
  drg_vcn_attachments        = var.drg_vcn_attachments
  freeform_tags              = var.freeform_tags
  label_prefix               = var.label_prefix
  remote_peering_connections = var.remote_peering_connections
}
