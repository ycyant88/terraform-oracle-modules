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
  source                = "oracle-terraform-modules/bastion/oci"
  version               = "2.0.0-RC2"
  api_fingerprint       = var.api_fingerprint
  api_private_key_path  = var.api_private_key_path
  availability_domain   = var.availability_domain
  bastion_access        = var.bastion_access
  bastion_enabled       = var.bastion_enabled
  bastion_image_id      = var.bastion_image_id
  bastion_shape         = var.bastion_shape
  bastion_upgrade       = var.bastion_upgrade
  compartment_id        = var.compartment_id
  ig_route_id           = var.ig_route_id
  label_prefix          = var.label_prefix
  netnum                = var.netnum
  newbits               = var.newbits
  notification_enabled  = var.notification_enabled
  notification_endpoint = var.notification_endpoint
  notification_protocol = var.notification_protocol
  notification_topic    = var.notification_topic
  region                = var.region
  ssh_public_key        = var.ssh_public_key
  ssh_public_key_path   = var.ssh_public_key_path
  tags                  = var.tags
  tenancy_id            = var.tenancy_id
  timezone              = var.timezone
  user_id               = var.user_id
  vcn_id                = var.vcn_id
}
