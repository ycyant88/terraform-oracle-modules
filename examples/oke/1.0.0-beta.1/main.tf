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
  source                         = "oracle-terraform-modules/oke/oci"
  version                        = "1.0.0-beta.1"
  add_incubator_repo             = var.add_incubator_repo
  add_jetstack_repo              = var.add_jetstack_repo
  allow_node_port_access         = var.allow_node_port_access
  allow_worker_ssh_access        = var.allow_worker_ssh_access
  api_fingerprint                = var.api_fingerprint
  api_private_key_path           = var.api_private_key_path
  availability_domains           = var.availability_domains
  bastion_access                 = var.bastion_access
  bastion_package_update         = var.bastion_package_update
  bastion_package_upgrade        = var.bastion_package_upgrade
  bastion_shape                  = var.bastion_shape
  calico_version                 = var.calico_version
  cluster_name                   = var.cluster_name
  compartment_name               = var.compartment_name
  compartment_ocid               = var.compartment_ocid
  create_auth_token              = var.create_auth_token
  create_bastion                 = var.create_bastion
  create_nat_gateway             = var.create_nat_gateway
  create_service_gateway         = var.create_service_gateway
  dashboard_enabled              = var.dashboard_enabled
  disable_auto_retries           = var.disable_auto_retries
  email_address                  = var.email_address
  enable_instance_principal      = var.enable_instance_principal
  existing_key_id                = var.existing_key_id
  existing_vault_id              = var.existing_vault_id
  helm_version                   = var.helm_version
  image_ocid                     = var.image_ocid
  image_operating_system         = var.image_operating_system
  image_operating_system_version = var.image_operating_system_version
  install_calico                 = var.install_calico
  install_helm                   = var.install_helm
  install_metricserver           = var.install_metricserver
  kubernetes_version             = var.kubernetes_version
  label_prefix                   = var.label_prefix
  lb_subnet_type                 = var.lb_subnet_type
  nat_gateway_name               = var.nat_gateway_name
  newbits                        = var.newbits
  node_pool_image_id             = var.node_pool_image_id
  node_pool_name_prefix          = var.node_pool_name_prefix
  node_pool_os                   = var.node_pool_os
  node_pool_os_version           = var.node_pool_os_version
  node_pools                     = var.node_pools
  ocir_urls                      = var.ocir_urls
  pods_cidr                      = var.pods_cidr
  preferred_lb_subnets           = var.preferred_lb_subnets
  region                         = var.region
  service_gateway_name           = var.service_gateway_name
  services_cidr                  = var.services_cidr
  ssh_private_key_path           = var.ssh_private_key_path
  ssh_public_key_path            = var.ssh_public_key_path
  subnets                        = var.subnets
  tenancy_name                   = var.tenancy_name
  tenancy_ocid                   = var.tenancy_ocid
  tiller_enabled                 = var.tiller_enabled
  use_encryption                 = var.use_encryption
  use_existing_key               = var.use_existing_key
  use_existing_vault             = var.use_existing_vault
  user_ocid                      = var.user_ocid
  username                       = var.username
  vcn_cidr                       = var.vcn_cidr
  vcn_dns_name                   = var.vcn_dns_name
  vcn_name                       = var.vcn_name
  worker_mode                    = var.worker_mode
}
