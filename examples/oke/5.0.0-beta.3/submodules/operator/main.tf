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
  source                = "oracle-terraform-modules/oke/oci"
  version               = "5.0.0-beta.3"
  assign_dns            = var.assign_dns
  availability_domain   = var.availability_domain
  bastion_host          = var.bastion_host
  bastion_user          = var.bastion_user
  cloud_init            = var.cloud_init
  compartment_id        = var.compartment_id
  defined_tags          = var.defined_tags
  freeform_tags         = var.freeform_tags
  image_id              = var.image_id
  install_helm          = var.install_helm
  install_k9s           = var.install_k9s
  install_kubectx       = var.install_kubectx
  kubeconfig            = var.kubeconfig
  kubernetes_version    = var.kubernetes_version
  nsg_ids               = var.nsg_ids
  pv_transit_encryption = var.pv_transit_encryption
  shape                 = var.shape
  ssh_private_key       = var.ssh_private_key
  ssh_public_key        = var.ssh_public_key
  state_id              = var.state_id
  subnet_id             = var.subnet_id
  tag_namespace         = var.tag_namespace
  timezone              = var.timezone
  upgrade               = var.upgrade
  use_defined_tags      = var.use_defined_tags
  user                  = var.user
  volume_kms_key_id     = var.volume_kms_key_id
}
