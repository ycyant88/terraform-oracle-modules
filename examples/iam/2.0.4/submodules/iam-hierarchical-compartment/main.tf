module "iam" {
  source              = "oracle-terraform-modules/iam/oci"
  version             = "2.0.4"
  compartments        = var.compartments
  root_compartment_id = var.root_compartment_id
}
