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

module "olcne" {
  source                        = "oracle-terraform-modules/olcne/oci"
  version                       = "0.1.0"
  admin_enabled                 = var.admin_enabled
  admin_image_id                = var.admin_image_id
  admin_instance_principal      = var.admin_instance_principal
  admin_notification_enabled    = var.admin_notification_enabled
  admin_notification_endpoint   = var.admin_notification_endpoint
  admin_notification_protocol   = var.admin_notification_protocol
  admin_notification_topic      = var.admin_notification_topic
  admin_package_upgrade         = var.admin_package_upgrade
  admin_shape                   = var.admin_shape
  admin_timezone                = var.admin_timezone
  allow_master_ssh_access       = var.allow_master_ssh_access
  allow_worker_ssh_access       = var.allow_worker_ssh_access
  api_fingerprint               = var.api_fingerprint
  api_private_key_path          = var.api_private_key_path
  availability_domains          = var.availability_domains
  bastion_access                = var.bastion_access
  bastion_enabled               = var.bastion_enabled
  bastion_image_id              = var.bastion_image_id
  bastion_notification_enabled  = var.bastion_notification_enabled
  bastion_notification_endpoint = var.bastion_notification_endpoint
  bastion_notification_protocol = var.bastion_notification_protocol
  bastion_notification_topic    = var.bastion_notification_topic
  bastion_package_upgrade       = var.bastion_package_upgrade
  bastion_shape                 = var.bastion_shape
  bastion_timezone              = var.bastion_timezone
  city                          = var.city
  cluster_name                  = var.cluster_name
  common_name                   = var.common_name
  compartment_id                = var.compartment_id
  country                       = var.country
  create_kata_runtime           = var.create_kata_runtime
  disable_auto_retries          = var.disable_auto_retries
  environment_name              = var.environment_name
  helm_version                  = var.helm_version
  int_lb_shape                  = var.int_lb_shape
  kata_runtime_class_name       = var.kata_runtime_class_name
  label_prefix                  = var.label_prefix
  master_image_id               = var.master_image_id
  master_package_upgrade        = var.master_package_upgrade
  master_shape                  = var.master_shape
  master_size                   = var.master_size
  master_timezone               = var.master_timezone
  nat_gateway_enabled           = var.nat_gateway_enabled
  netnum                        = var.netnum
  newbits                       = var.newbits
  operator_image_id             = var.operator_image_id
  operator_package_upgrade      = var.operator_package_upgrade
  operator_shape                = var.operator_shape
  operator_timezone             = var.operator_timezone
  org                           = var.org
  org_unit                      = var.org_unit
  public_lb_shape               = var.public_lb_shape
  region                        = var.region
  secret_id                     = var.secret_id
  service_gateway_enabled       = var.service_gateway_enabled
  ssh_private_key_path          = var.ssh_private_key_path
  ssh_public_key_path           = var.ssh_public_key_path
  state                         = var.state
  tenancy_id                    = var.tenancy_id
  user_id                       = var.user_id
  vcn_cidr                      = var.vcn_cidr
  vcn_dns_label                 = var.vcn_dns_label
  vcn_name                      = var.vcn_name
  worker_image_id               = var.worker_image_id
  worker_package_upgrade        = var.worker_package_upgrade
  worker_shape                  = var.worker_shape
  worker_size                   = var.worker_size
  worker_timezone               = var.worker_timezone
}
