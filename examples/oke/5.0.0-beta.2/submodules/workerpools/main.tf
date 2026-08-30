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
  source                          = "oracle-terraform-modules/oke/oci"
  version                         = "5.0.0-beta.2"
  api_fingerprint                 = var.api_fingerprint
  api_private_key                 = var.api_private_key
  api_private_key_password        = var.api_private_key_password
  api_private_key_path            = var.api_private_key_path
  apiserver_private_host          = var.apiserver_private_host
  apiserver_public_host           = var.apiserver_public_host
  assign_dns                      = var.assign_dns
  assign_public_ip                = var.assign_public_ip
  block_volume_type               = var.block_volume_type
  boot_volume_size                = var.boot_volume_size
  cloudinit                       = var.cloudinit
  cluster_ca_cert                 = var.cluster_ca_cert
  cluster_dns                     = var.cluster_dns
  cluster_id                      = var.cluster_id
  cni_type                        = var.cni_type
  compartment_id                  = var.compartment_id
  compartment_ocid                = var.compartment_ocid
  config_file_profile             = var.config_file_profile
  create_policies                 = var.create_policies
  current_user_ocid               = var.current_user_ocid
  defined_tags                    = var.defined_tags
  enable_pv_encryption_in_transit = var.enable_pv_encryption_in_transit
  enabled                         = var.enabled
  freeform_tags                   = var.freeform_tags
  home_region                     = var.home_region
  image_id                        = var.image_id
  image_type                      = var.image_type
  kubeproxy_mode                  = var.kubeproxy_mode
  kubernetes_version              = var.kubernetes_version
  label_prefix                    = var.label_prefix
  memory                          = var.memory
  mode                            = var.mode
  network_compartment_id          = var.network_compartment_id
  node_labels                     = var.node_labels
  ocpus                           = var.ocpus
  os                              = var.os
  os_version                      = var.os_version
  pod_nsg_ids                     = var.pod_nsg_ids
  pod_subnet_id                   = var.pod_subnet_id
  region                          = var.region
  shape                           = var.shape
  size                            = var.size
  sriov_num_vfs                   = var.sriov_num_vfs
  ssh_private_key                 = var.ssh_private_key
  ssh_private_key_path            = var.ssh_private_key_path
  ssh_public_key                  = var.ssh_public_key
  ssh_public_key_path             = var.ssh_public_key_path
  subnet_id                       = var.subnet_id
  tenancy_id                      = var.tenancy_id
  tenancy_ocid                    = var.tenancy_ocid
  timezone                        = var.timezone
  user_id                         = var.user_id
  volume_kms_key_id               = var.volume_kms_key_id
  worker_compartment_id           = var.worker_compartment_id
  worker_image_id                 = var.worker_image_id
  worker_image_os                 = var.worker_image_os
  worker_image_os_version         = var.worker_image_os_version
  worker_image_type               = var.worker_image_type
  worker_nsg_ids                  = var.worker_nsg_ids
  worker_pool_boot_volume_size    = var.worker_pool_boot_volume_size
  worker_pool_cloudinit           = var.worker_pool_cloudinit
  worker_pool_enabled             = var.worker_pool_enabled
  worker_pool_memory              = var.worker_pool_memory
  worker_pool_mode                = var.worker_pool_mode
  worker_pool_ocpus               = var.worker_pool_ocpus
  worker_pool_shape               = var.worker_pool_shape
  worker_pool_size                = var.worker_pool_size
  worker_pool_subnet_id           = var.worker_pool_subnet_id
  worker_pools                    = var.worker_pools
}
