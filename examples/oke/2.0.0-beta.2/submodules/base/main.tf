module "oke" {
  source            = "oracle-terraform-modules/oke/oci"
  version           = "2.0.0-beta.2"
  oci_base_admin    = var.oci_base_admin
  oci_base_bastion  = var.oci_base_bastion
  oci_base_general  = var.oci_base_general
  oci_base_identity = var.oci_base_identity
  oci_base_vcn      = var.oci_base_vcn
}
