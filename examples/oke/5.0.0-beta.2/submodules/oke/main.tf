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
  version                                                 = "5.0.0-beta.2"
  admission_controller_options                            = var.admission_controller_options
  cloudinit_nodepool                                      = var.cloudinit_nodepool
  cloudinit_nodepool_common                               = var.cloudinit_nodepool_common
  cluster_kms_key_id                                      = var.cluster_kms_key_id
  cluster_kubernetes_version                              = var.cluster_kubernetes_version
  cluster_name                                            = var.cluster_name
  cluster_options_add_ons_is_kubernetes_dashboard_enabled = var.cluster_options_add_ons_is_kubernetes_dashboard_enabled
  cluster_options_kubernetes_network_config_pods_cidr     = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_subnets                                         = var.cluster_subnets
  cni_type                                                = var.cni_type
  compartment_id                                          = var.compartment_id
  control_plane_nsgs                                      = var.control_plane_nsgs
  control_plane_type                                      = var.control_plane_type
  create_policies                                         = var.create_policies
  defined_tags                                            = var.defined_tags
  enable_pv_encryption_in_transit                         = var.enable_pv_encryption_in_transit
  freeform_tags                                           = var.freeform_tags
  image_signing_keys                                      = var.image_signing_keys
  kubeproxy_mode                                          = var.kubeproxy_mode
  label_prefix                                            = var.label_prefix
  max_pods_per_node                                       = var.max_pods_per_node
  node_pool_image_id                                      = var.node_pool_image_id
  node_pool_image_type                                    = var.node_pool_image_type
  node_pool_name_prefix                                   = var.node_pool_name_prefix
  node_pool_os                                            = var.node_pool_os
  node_pool_os_version                                    = var.node_pool_os_version
  node_pool_timezone                                      = var.node_pool_timezone
  node_pool_volume_kms_key_id                             = var.node_pool_volume_kms_key_id
  node_pools                                              = var.node_pools
  pod_nsgs                                                = var.pod_nsgs
  preferred_load_balancer                                 = var.preferred_load_balancer
  ssh_public_key                                          = var.ssh_public_key
  ssh_public_key_path                                     = var.ssh_public_key_path
  tenancy_id                                              = var.tenancy_id
  use_cluster_encryption                                  = var.use_cluster_encryption
  use_node_pool_volume_encryption                         = var.use_node_pool_volume_encryption
  use_signed_images                                       = var.use_signed_images
  vcn_id                                                  = var.vcn_id
  worker_nsgs                                             = var.worker_nsgs
}
