module "oke" {
  source                   = "oracle-terraform-modules/oke/oci"
  version                  = "5.3.1"
  bastion_host             = var.bastion_host
  bastion_user             = var.bastion_user
  cluster_addons           = var.cluster_addons
  cluster_addons_to_remove = var.cluster_addons_to_remove
  cluster_id               = var.cluster_id
  kubernetes_version       = var.kubernetes_version
  operator_enabled         = var.operator_enabled
  operator_host            = var.operator_host
  operator_user            = var.operator_user
  ssh_private_key          = var.ssh_private_key
}
