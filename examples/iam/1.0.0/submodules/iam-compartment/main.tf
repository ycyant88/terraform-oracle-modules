module "iam" {
  source                  = "oracle-terraform-modules/iam/oci"
  version                 = "1.0.0"
  compartment_create      = var.compartment_create
  compartment_description = var.compartment_description
  compartment_name        = var.compartment_name
  tenancy_ocid            = var.tenancy_ocid
}
