module "vcn" {
  source              = "oracle-terraform-modules/vcn/oci"
  version             = "3.1.0"
  compartment_id      = var.compartment_id
  defined_tags        = var.defined_tags
  drg_display_name    = var.drg_display_name
  drg_vcn_attachments = var.drg_vcn_attachments
  freeform_tags       = var.freeform_tags
  label_prefix        = var.label_prefix
  region              = var.region
}
