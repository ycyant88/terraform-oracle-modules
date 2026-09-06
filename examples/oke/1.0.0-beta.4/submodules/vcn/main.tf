module "oke" {
  source       = "oracle-terraform-modules/oke/oci"
  version      = "1.0.0-beta.4"
  oci_base_vcn = var.oci_base_vcn
}
