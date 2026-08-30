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
  source                               = "oracle-terraform-modules/oke/oci"
  version                              = "4.2.2"
  bastion_public_ip                    = var.bastion_public_ip
  bastion_state                        = var.bastion_state
  calico_version                       = var.calico_version
  check_node_active                    = var.check_node_active
  cluster_id                           = var.cluster_id
  cluster_kms_dynamic_group_id         = var.cluster_kms_dynamic_group_id
  cluster_kms_key_id                   = var.cluster_kms_key_id
  compartment_id                       = var.compartment_id
  create_bastion_host                  = var.create_bastion_host
  create_operator                      = var.create_operator
  create_service_account               = var.create_service_account
  debug_mode                           = var.debug_mode
  email_address                        = var.email_address
  enable_gatekeeper                    = var.enable_gatekeeper
  enable_metric_server                 = var.enable_metric_server
  enable_operator_instance_principal   = var.enable_operator_instance_principal
  enable_vpa                           = var.enable_vpa
  gatekeeeper_version                  = var.gatekeeeper_version
  install_calico                       = var.install_calico
  label_prefix                         = var.label_prefix
  node_pools_to_drain                  = var.node_pools_to_drain
  nodepool_upgrade_method              = var.nodepool_upgrade_method
  operator_dynamic_group               = var.operator_dynamic_group
  operator_os_version                  = var.operator_os_version
  operator_private_ip                  = var.operator_private_ip
  operator_state                       = var.operator_state
  pods_cidr                            = var.pods_cidr
  region                               = var.region
  secret_id                            = var.secret_id
  secret_name                          = var.secret_name
  secret_namespace                     = var.secret_namespace
  service_account_cluster_role_binding = var.service_account_cluster_role_binding
  service_account_name                 = var.service_account_name
  service_account_namespace            = var.service_account_namespace
  ssh_private_key                      = var.ssh_private_key
  ssh_private_key_path                 = var.ssh_private_key_path
  ssh_public_key                       = var.ssh_public_key
  ssh_public_key_path                  = var.ssh_public_key_path
  tenancy_id                           = var.tenancy_id
  upgrade_nodepool                     = var.upgrade_nodepool
  use_cluster_encryption               = var.use_cluster_encryption
  username                             = var.username
  vpa_version                          = var.vpa_version
}
