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
  version                                                 = "4.0.3"
  admission_controller_options                            = var.admission_controller_options
  cluster_kubernetes_version                              = var.cluster_kubernetes_version
  cluster_name                                            = var.cluster_name
  cluster_options_add_ons_is_kubernetes_dashboard_enabled = var.cluster_options_add_ons_is_kubernetes_dashboard_enabled
  cluster_options_kubernetes_network_config_pods_cidr     = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_subnets                                         = var.cluster_subnets
  compartment_id                                          = var.compartment_id
  control_plane_nsgs                                      = var.control_plane_nsgs
  control_plane_type                                      = var.control_plane_type
  image_signing_keys                                      = var.image_signing_keys
  kms_key_id                                              = var.kms_key_id
  label_prefix                                            = var.label_prefix
  node_pool_image_id                                      = var.node_pool_image_id
  node_pool_name_prefix                                   = var.node_pool_name_prefix
  node_pool_os                                            = var.node_pool_os
  node_pool_os_version                                    = var.node_pool_os_version
  node_pools                                              = var.node_pools
  preferred_load_balancer                                 = var.preferred_load_balancer
  ssh_public_key                                          = var.ssh_public_key
  ssh_public_key_path                                     = var.ssh_public_key_path
  tenancy_id                                              = var.tenancy_id
  use_encryption                                          = var.use_encryption
  use_signed_images                                       = var.use_signed_images
  vcn_id                                                  = var.vcn_id
  worker_nsgs                                             = var.worker_nsgs
}
