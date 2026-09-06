module "logging" {
  source                 = "oracle-terraform-modules/logging/oci"
  version                = "0.1.0"
  compartment_id         = var.compartment_id
  log_retention_duration = var.log_retention_duration
  logdefinition          = var.logdefinition
  loggroup               = var.loggroup
  vcn_id                 = var.vcn_id
}
