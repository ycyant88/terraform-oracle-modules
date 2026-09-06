module "iam" {
  source           = "oracle-terraform-modules/iam/oci"
  version          = "1.0.3"
  tenancy_ocid     = var.tenancy_ocid
  user_create      = var.user_create
  user_description = var.user_description
  user_name        = var.user_name
}
