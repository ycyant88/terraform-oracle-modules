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
  source              = "oracle-terraform-modules/drg/oci"
  version             = "1.0.3"
  compartment_id      = var.compartment_id
  create_rpc          = var.create_rpc
  defined_tags        = var.defined_tags
  drg_display_name    = var.drg_display_name
  drg_id              = var.drg_id
  drg_vcn_attachments = var.drg_vcn_attachments
  freeform_tags       = var.freeform_tags
  label_prefix        = var.label_prefix
  rpc_acceptor_id     = var.rpc_acceptor_id
  rpc_acceptor_region = var.rpc_acceptor_region
}
