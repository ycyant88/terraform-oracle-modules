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
  source                      = "oracle-terraform-modules/bastion/oci"
  version                     = "3.2.0"
  assign_dns                  = var.assign_dns
  bastion_allowed_cidrs       = var.bastion_allowed_cidrs
  bastion_availability_domain = var.bastion_availability_domain
  bastion_await_cloudinit     = var.bastion_await_cloudinit
  bastion_image_id            = var.bastion_image_id
  bastion_image_os            = var.bastion_image_os
  bastion_image_os_version    = var.bastion_image_os_version
  bastion_image_type          = var.bastion_image_type
  bastion_is_public           = var.bastion_is_public
  bastion_nsg_ids             = var.bastion_nsg_ids
  bastion_route_table_id      = var.bastion_route_table_id
  bastion_shape               = var.bastion_shape
  bastion_state               = var.bastion_state
  bastion_timezone            = var.bastion_timezone
  bastion_user                = var.bastion_user
  compartment_id              = var.compartment_id
  freeform_tags               = var.freeform_tags
  ig_route_id                 = var.ig_route_id
  label_prefix                = var.label_prefix
  netnum                      = var.netnum
  newbits                     = var.newbits
  ssh_private_key             = var.ssh_private_key
  ssh_public_key              = var.ssh_public_key
  ssh_public_key_path         = var.ssh_public_key_path
  upgrade_bastion             = var.upgrade_bastion
  vcn_id                      = var.vcn_id
}
