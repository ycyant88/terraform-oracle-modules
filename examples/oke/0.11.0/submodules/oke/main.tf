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
  version                                                 = "0.11.0"
  ad_names                                                = var.ad_names
  auth_token                                              = var.auth_token
  availability_domains                                    = var.availability_domains
  bastion_public_ip                                       = var.bastion_public_ip
  calico_version                                          = var.calico_version
  cluster_kube_config_expiration                          = var.cluster_kube_config_expiration
  cluster_kube_config_token_version                       = var.cluster_kube_config_token_version
  cluster_kubernetes_version                              = var.cluster_kubernetes_version
  cluster_name                                            = var.cluster_name
  cluster_options_add_ons_is_kubernetes_dashboard_enabled = var.cluster_options_add_ons_is_kubernetes_dashboard_enabled
  cluster_options_add_ons_is_tiller_enabled               = var.cluster_options_add_ons_is_tiller_enabled
  cluster_options_kubernetes_network_config_pods_cidr     = var.cluster_options_kubernetes_network_config_pods_cidr
  cluster_options_kubernetes_network_config_services_cidr = var.cluster_options_kubernetes_network_config_services_cidr
  cluster_subnets                                         = var.cluster_subnets
  compartment_ocid                                        = var.compartment_ocid
  create_auth_token                                       = var.create_auth_token
  create_bastion                                          = var.create_bastion
  email_address                                           = var.email_address
  enable_instance_principal                               = var.enable_instance_principal
  helm_version                                            = var.helm_version
  image_operating_system                                  = var.image_operating_system
  install_calico                                          = var.install_calico
  install_helm                                            = var.install_helm
  label_prefix                                            = var.label_prefix
  node_pool_name_prefix                                   = var.node_pool_name_prefix
  node_pool_node_image_name                               = var.node_pool_node_image_name
  node_pool_node_shape                                    = var.node_pool_node_shape
  node_pool_quantity_per_subnet                           = var.node_pool_quantity_per_subnet
  node_pools                                              = var.node_pools
  nodepool_topology                                       = var.nodepool_topology
  ocir_urls                                               = var.ocir_urls
  ocirtoken_id                                            = var.ocirtoken_id
  region                                                  = var.region
  ssh_private_key_path                                    = var.ssh_private_key_path
  ssh_public_key_path                                     = var.ssh_public_key_path
  tenancy_name                                            = var.tenancy_name
  tenancy_ocid                                            = var.tenancy_ocid
  user_ocid                                               = var.user_ocid
  username                                                = var.username
  vcn_id                                                  = var.vcn_id
}
