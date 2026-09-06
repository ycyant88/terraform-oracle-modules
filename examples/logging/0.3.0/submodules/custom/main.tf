module "logging" {
  source                 = "oracle-terraform-modules/logging/oci"
  version                = "0.3.0"
  compartment_id         = var.compartment_id
  label_prefix           = var.label_prefix
  linux_logdef           = var.linux_logdef
  linuxloggroup          = var.linuxloggroup
  log_retention_duration = var.log_retention_duration
  tenancy_id             = var.tenancy_id
  windows_logdef         = var.windows_logdef
  winloggroup            = var.winloggroup
}
