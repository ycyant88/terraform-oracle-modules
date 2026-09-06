module "iam" {
  source       = "oracle-terraform-modules/iam/oci"
  version      = "2.0.3"
  tenancy_ocid = var.tenancy_ocid
  users        = var.users
}
