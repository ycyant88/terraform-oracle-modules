module "oke" {
  source       = "oracle-terraform-modules/oke/oci"
  version      = "2.0.0-beta.1"
  oci_base_vcn = var.oci_base_vcn
}
