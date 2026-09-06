module "base" {
  source       = "oracle-terraform-modules/base/oci"
  version      = "1.1.0"
  oci_base_vcn = var.oci_base_vcn
}
