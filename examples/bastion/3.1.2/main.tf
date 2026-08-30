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

module "bastion" {
  source                        = "oracle-terraform-modules/bastion/oci"
  version                       = "3.1.2"
  availability_domain           = var.availability_domain
  bastion_access                = var.bastion_access
  bastion_image_id              = var.bastion_image_id
  bastion_notification_endpoint = var.bastion_notification_endpoint
  bastion_notification_protocol = var.bastion_notification_protocol
  bastion_notification_topic    = var.bastion_notification_topic
  bastion_os_version            = var.bastion_os_version
  bastion_shape                 = var.bastion_shape
  bastion_state                 = var.bastion_state
  bastion_timezone              = var.bastion_timezone
  bastion_type                  = var.bastion_type
  compartment_id                = var.compartment_id
  enable_bastion_notification   = var.enable_bastion_notification
  freeform_tags                 = var.freeform_tags
  ig_route_id                   = var.ig_route_id
  label_prefix                  = var.label_prefix
  netnum                        = var.netnum
  newbits                       = var.newbits
  ssh_public_key                = var.ssh_public_key
  ssh_public_key_path           = var.ssh_public_key_path
  tenancy_id                    = var.tenancy_id
  upgrade_bastion               = var.upgrade_bastion
  vcn_id                        = var.vcn_id
}
