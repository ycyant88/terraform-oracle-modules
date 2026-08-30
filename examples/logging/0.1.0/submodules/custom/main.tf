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

module "logging" {
  source                 = "oracle-terraform-modules/logging/oci"
  version                = "0.1.0"
  compartment_id         = var.compartment_id
  linux_logdef           = var.linux_logdef
  linuxloggroup          = var.linuxloggroup
  log_retention_duration = var.log_retention_duration
  tenancy_id             = var.tenancy_id
  windows_logdef         = var.windows_logdef
  winloggroup            = var.winloggroup
}
