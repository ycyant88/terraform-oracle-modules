module "logging" {
  source                 = "oracle-terraform-modules/logging/oci"
  version                = "0.1.0"
  compartment_id         = var.compartment_id
  linux_logdef           = var.linux_logdef
  log_retention_duration = var.log_retention_duration
  loggroup_tags          = var.loggroup_tags
  service_logdef         = var.service_logdef
  tenancy_id             = var.tenancy_id
  vcn_id                 = var.vcn_id
  windows_logdef         = var.windows_logdef
}
