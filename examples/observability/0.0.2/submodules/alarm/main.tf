module "observability" {
  source           = "oracle-terraform-modules/observability/oci"
  version          = "0.0.2"
  alarm_def        = var.alarm_def
  compartment_ocid = var.compartment_ocid
  label_prefix     = var.label_prefix
  notification     = var.notification
}
