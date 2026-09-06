module "observability" {
  source       = "oracle-terraform-modules/observability/oci"
  version      = "0.0.2"
  path         = var.path
  schema_names = var.schema_names
}
