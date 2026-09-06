module "fsdr" {
  source               = "oracle-terraform-modules/fsdr/oci"
  version              = "1.0.0"
  association          = var.association
  compartment_id       = var.compartment_id
  defined_tags         = var.defined_tags
  disassociate_trigger = var.disassociate_trigger
  display_name         = var.display_name
  freeform_tags        = var.freeform_tags
  log_location         = var.log_location
  members              = var.members
}
