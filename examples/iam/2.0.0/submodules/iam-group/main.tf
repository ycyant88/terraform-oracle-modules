module "iam" {
  source                = "oracle-terraform-modules/iam/oci"
  version               = "2.0.0"
  group_create          = var.group_create
  group_description     = var.group_description
  group_name            = var.group_name
  policy_compartment_id = var.policy_compartment_id
  policy_description    = var.policy_description
  policy_name           = var.policy_name
  policy_statements     = var.policy_statements
  tenancy_ocid          = var.tenancy_ocid
  user_ids              = var.user_ids
}
