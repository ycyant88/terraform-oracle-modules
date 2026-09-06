module "observability" {
  source                = "oracle-terraform-modules/observability/oci"
  version               = "0.0.1"
  dynamic_group         = var.dynamic_group
  policy_compartment_id = var.policy_compartment_id
  service_connector_def = var.service_connector_def
  tenancy_ocid          = var.tenancy_ocid
}
