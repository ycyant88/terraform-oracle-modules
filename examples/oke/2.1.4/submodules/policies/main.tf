module "oke" {
  source        = "oracle-terraform-modules/oke/oci"
  version       = "2.1.4"
  admin         = var.admin
  cluster_id    = var.cluster_id
  dynamic_group = var.dynamic_group
  label_prefix  = var.label_prefix
  oci_identity  = var.oci_identity
  oke_kms       = var.oke_kms
  ssh_keys      = var.ssh_keys
}
