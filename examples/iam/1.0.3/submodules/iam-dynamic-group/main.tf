module "iam" {
  source                    = "oracle-terraform-modules/iam/oci"
  version                   = "1.0.3"
  dynamic_group_create      = var.dynamic_group_create
  dynamic_group_description = var.dynamic_group_description
  dynamic_group_name        = var.dynamic_group_name
  dynamic_group_rule        = var.dynamic_group_rule
  policy_compartment_id     = var.policy_compartment_id
  policy_description        = var.policy_description
  policy_name               = var.policy_name
  policy_statements         = var.policy_statements
  tenancy_ocid              = var.tenancy_ocid
}
