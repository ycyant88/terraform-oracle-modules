module "logging" {
  source                 = "oracle-terraform-modules/logging/oci"
  version                = "0.3.0"
  compartment_id         = var.compartment_id
  label_prefix           = var.label_prefix
  log_retention_duration = var.log_retention_duration
  logdefinition          = var.logdefinition
  loggroup               = var.loggroup
}
