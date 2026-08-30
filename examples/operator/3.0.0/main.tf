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

module "operator" {
  source                             = "oracle-terraform-modules/operator/oci"
  version                            = "3.0.0"
  availability_domain                = var.availability_domain
  compartment_id                     = var.compartment_id
  enable_operator_instance_principal = var.enable_operator_instance_principal
  enable_operator_notification       = var.enable_operator_notification
  freeform_tags                      = var.freeform_tags
  label_prefix                       = var.label_prefix
  nat_route_id                       = var.nat_route_id
  netnum                             = var.netnum
  newbits                            = var.newbits
  nsg_ids                            = var.nsg_ids
  operator_image_id                  = var.operator_image_id
  operator_notification_endpoint     = var.operator_notification_endpoint
  operator_notification_protocol     = var.operator_notification_protocol
  operator_notification_topic        = var.operator_notification_topic
  operator_os_version                = var.operator_os_version
  operator_shape                     = var.operator_shape
  operator_state                     = var.operator_state
  operator_timezone                  = var.operator_timezone
  ssh_public_key                     = var.ssh_public_key
  ssh_public_key_path                = var.ssh_public_key_path
  tenancy_id                         = var.tenancy_id
  upgrade_operator                   = var.upgrade_operator
  vcn_id                             = var.vcn_id
}
