terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "8.29.0"
    }
  }
}

provider "oci" {
  # Configuration options
}

module "oke" {
  source                                                  = "oracle-terraform-modules/oke/oci"
  version                                                 = "4.0.0-BETA.2"
  admission_controller_options                            = var.admission_controller_options
  bastion_public_ip                                       = var.bastion_public_ip
  bastion_state                                           = var.bastion_state
  calico_version                                          = var.calico_version
  check_node_active                                       = var.check_node_active
  cluster_kubernetes_version                              = var.cluster_kubernetes_version
  cluster_name                                            = var.cluster_name
  cluster_options_add_ons_is_kubernetes_dashboard_enabled = var.cluster_options_add_ons_is_kubernetes_dashboard_enabled
  cluster_options_kubernetes_network_config_pods_cidr     = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_subnets                                         = var.cluster_subnets
  compartment_id                                          = var.compartment_id
  control_plane_access                                    = var.control_plane_access
  control_plane_nsgs                                      = var.control_plane_nsgs
  create_bastion_host                                     = var.create_bastion_host
  create_operator                                         = var.create_operator
  create_service_account                                  = var.create_service_account
  email_address                                           = var.email_address
  enable_metric_server                                    = var.enable_metric_server
  enable_vpa                                              = var.enable_vpa
  image_signing_keys                                      = var.image_signing_keys
  install_calico                                          = var.install_calico
  kms_key_id                                              = var.kms_key_id
  label_prefix                                            = var.label_prefix
  node_pool_image_id                                      = var.node_pool_image_id
  node_pool_name_prefix                                   = var.node_pool_name_prefix
  node_pool_os                                            = var.node_pool_os
  node_pool_os_version                                    = var.node_pool_os_version
  node_pools                                              = var.node_pools
  node_pools_to_drain                                     = var.node_pools_to_drain
  nodepool_drain                                          = var.nodepool_drain
  nodepool_upgrade_method                                 = var.nodepool_upgrade_method
  ocir_urls                                               = var.ocir_urls
  operator_instance_principal                             = var.operator_instance_principal
  operator_os_version                                     = var.operator_os_version
  operator_private_ip                                     = var.operator_private_ip
  preferred_lb_type                                       = var.preferred_lb_type
  region                                                  = var.region
  secret_id                                               = var.secret_id
  secret_name                                             = var.secret_name
  secret_namespace                                        = var.secret_namespace
  service_account_cluster_role_binding                    = var.service_account_cluster_role_binding
  service_account_name                                    = var.service_account_name
  service_account_namespace                               = var.service_account_namespace
  ssh_private_key_path                                    = var.ssh_private_key_path
  ssh_public_key                                          = var.ssh_public_key
  ssh_public_key_path                                     = var.ssh_public_key_path
  tenancy_id                                              = var.tenancy_id
  use_encryption                                          = var.use_encryption
  use_signed_images                                       = var.use_signed_images
  username                                                = var.username
  vcn_id                                                  = var.vcn_id
  vpa_version                                             = var.vpa_version
}
