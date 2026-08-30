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
  version                              = "2.3.2"
  admission_controller_options         = var.admission_controller_options
  allow_node_port_access               = var.allow_node_port_access
  allow_worker_ssh_access              = var.allow_worker_ssh_access
  api_fingerprint                      = var.api_fingerprint
  api_private_key_path                 = var.api_private_key_path
  availability_domains                 = var.availability_domains
  bastion_access                       = var.bastion_access
  bastion_enabled                      = var.bastion_enabled
  bastion_image_id                     = var.bastion_image_id
  bastion_notification_enabled         = var.bastion_notification_enabled
  bastion_notification_endpoint        = var.bastion_notification_endpoint
  bastion_notification_protocol        = var.bastion_notification_protocol
  bastion_notification_topic           = var.bastion_notification_topic
  bastion_package_upgrade              = var.bastion_package_upgrade
  bastion_shape                        = var.bastion_shape
  bastion_timezone                     = var.bastion_timezone
  calico_enabled                       = var.calico_enabled
  calico_version                       = var.calico_version
  check_node_active                    = var.check_node_active
  cluster_name                         = var.cluster_name
  compartment_id                       = var.compartment_id
  create_service_account               = var.create_service_account
  dashboard_enabled                    = var.dashboard_enabled
  email_address                        = var.email_address
  existing_key_id                      = var.existing_key_id
  helm_enabled                         = var.helm_enabled
  helm_version                         = var.helm_version
  kubernetes_version                   = var.kubernetes_version
  label_prefix                         = var.label_prefix
  lb_subnet_type                       = var.lb_subnet_type
  metricserver_enabled                 = var.metricserver_enabled
  netnum                               = var.netnum
  newbits                              = var.newbits
  node_pool_image_id                   = var.node_pool_image_id
  node_pool_name_prefix                = var.node_pool_name_prefix
  node_pool_os                         = var.node_pool_os
  node_pool_os_version                 = var.node_pool_os_version
  node_pools                           = var.node_pools
  node_pools_to_drain                  = var.node_pools_to_drain
  nodepool_drain                       = var.nodepool_drain
  nodepool_upgrade_method              = var.nodepool_upgrade_method
  ocir_urls                            = var.ocir_urls
  operator_enabled                     = var.operator_enabled
  operator_image_id                    = var.operator_image_id
  operator_instance_principal          = var.operator_instance_principal
  operator_notification_enabled        = var.operator_notification_enabled
  operator_notification_endpoint       = var.operator_notification_endpoint
  operator_notification_protocol       = var.operator_notification_protocol
  operator_notification_topic          = var.operator_notification_topic
  operator_package_upgrade             = var.operator_package_upgrade
  operator_shape                       = var.operator_shape
  operator_timezone                    = var.operator_timezone
  pods_cidr                            = var.pods_cidr
  preferred_lb_subnets                 = var.preferred_lb_subnets
  region                               = var.region
  secret_id                            = var.secret_id
  service_account_cluster_role_binding = var.service_account_cluster_role_binding
  service_account_name                 = var.service_account_name
  service_account_namespace            = var.service_account_namespace
  services_cidr                        = var.services_cidr
  ssh_private_key_path                 = var.ssh_private_key_path
  ssh_public_key                       = var.ssh_public_key
  ssh_public_key_path                  = var.ssh_public_key_path
  tags                                 = var.tags
  tenancy_id                           = var.tenancy_id
  tenancy_name                         = var.tenancy_name
  use_encryption                       = var.use_encryption
  user_id                              = var.user_id
  username                             = var.username
  vcn_cidr                             = var.vcn_cidr
  vcn_dns_label                        = var.vcn_dns_label
  vcn_name                             = var.vcn_name
  waf_enabled                          = var.waf_enabled
  worker_mode                          = var.worker_mode
}
