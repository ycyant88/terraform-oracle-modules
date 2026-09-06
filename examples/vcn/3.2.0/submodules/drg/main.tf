module "vcn" {
  source              = "oracle-terraform-modules/vcn/oci"
  version             = "3.2.0"
  compartment_id      = var.compartment_id
  create_rpc          = var.create_rpc
  defined_tags        = var.defined_tags
  drg_display_name    = var.drg_display_name
  drg_vcn_attachments = var.drg_vcn_attachments
  freeform_tags       = var.freeform_tags
  label_prefix        = var.label_prefix
  region              = var.region
  rpc_acceptor_id     = var.rpc_acceptor_id
  rpc_acceptor_region = var.rpc_acceptor_region
}
