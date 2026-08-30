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
  source                            = "oracle-terraform-modules/oke/oci"
  version                           = "5.5.1"
  ad_numbers                        = var.ad_numbers
  ad_numbers_to_names               = var.ad_numbers_to_names
  agent_config                      = var.agent_config
  allow_short_container_image_names = var.allow_short_container_image_names
  apiserver_private_host            = var.apiserver_private_host
  assign_dns                        = var.assign_dns
  assign_public_ip                  = var.assign_public_ip
  block_volume_type                 = var.block_volume_type
  capacity_reservation_id           = var.capacity_reservation_id
  cloud_init                        = var.cloud_init
  cluster_ca_cert                   = var.cluster_ca_cert
  cluster_dns                       = var.cluster_dns
  cluster_id                        = var.cluster_id
  cluster_type                      = var.cluster_type
  cni_type                          = var.cni_type
  compartment_id                    = var.compartment_id
  compute_clusters                  = var.compute_clusters
  defined_tags                      = var.defined_tags
  disable_default_cloud_init        = var.disable_default_cloud_init
  freeform_tags                     = var.freeform_tags
  gmc_scale_is_downsize_enabled     = var.gmc_scale_is_downsize_enabled
  gmc_scale_is_upsize_enabled       = var.gmc_scale_is_upsize_enabled
  gmc_scale_target_size             = var.gmc_scale_target_size
  image_id                          = var.image_id
  image_ids                         = var.image_ids
  image_os                          = var.image_os
  image_os_version                  = var.image_os_version
  image_type                        = var.image_type
  indexed_images                    = var.indexed_images
  kubeproxy_mode                    = var.kubeproxy_mode
  kubernetes_version                = var.kubernetes_version
  legacy_imds_endpoints_disabled    = var.legacy_imds_endpoints_disabled
  max_pods_per_node                 = var.max_pods_per_node
  node_labels                       = var.node_labels
  node_metadata                     = var.node_metadata
  nsg_ids                           = var.nsg_ids
  oke_ip_families                   = var.oke_ip_families
  platform_config                   = var.platform_config
  pod_nsg_ids                       = var.pod_nsg_ids
  pod_subnet_id                     = var.pod_subnet_id
  preemptible_config                = var.preemptible_config
  pv_transit_encryption             = var.pv_transit_encryption
  shape                             = var.shape
  ssh_public_key                    = var.ssh_public_key
  state_id                          = var.state_id
  subnet_ids                        = var.subnet_ids
  tag_namespace                     = var.tag_namespace
  tenancy_id                        = var.tenancy_id
  timezone                          = var.timezone
  use_defined_tags                  = var.use_defined_tags
  volume_kms_key_id                 = var.volume_kms_key_id
  worker_nsg_ids                    = var.worker_nsg_ids
  worker_pool_mode                  = var.worker_pool_mode
  worker_pool_size                  = var.worker_pool_size
  worker_pools                      = var.worker_pools
  worker_subnet_id                  = var.worker_subnet_id
}
