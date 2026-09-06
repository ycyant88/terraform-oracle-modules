module "oke" {
  source                            = "oracle-terraform-modules/oke/oci"
  version                           = "2.0.0-beta.1"
  calico                            = var.calico
  cluster_kube_config_expiration    = var.cluster_kube_config_expiration
  cluster_kube_config_token_version = var.cluster_kube_config_token_version
  helm                              = var.helm
  install_metricserver              = var.install_metricserver
  lbs                               = var.lbs
  node_pools                        = var.node_pools
  oke_admin                         = var.oke_admin
  oke_cluster                       = var.oke_cluster
  oke_general                       = var.oke_general
  oke_identity                      = var.oke_identity
  oke_ocir                          = var.oke_ocir
  oke_ssh_keys                      = var.oke_ssh_keys
}
