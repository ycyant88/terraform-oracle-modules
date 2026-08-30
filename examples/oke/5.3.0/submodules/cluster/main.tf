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
  source                            = "oracle-terraform-modules/oke/oci"
  version                           = "5.3.0"
  assign_public_ip_to_control_plane = var.assign_public_ip_to_control_plane
  cluster_defined_tags              = var.cluster_defined_tags
  cluster_freeform_tags             = var.cluster_freeform_tags
  cluster_kms_key_id                = var.cluster_kms_key_id
  cluster_name                      = var.cluster_name
  cluster_type                      = var.cluster_type
  cni_type                          = var.cni_type
  compartment_id                    = var.compartment_id
  control_plane_is_public           = var.control_plane_is_public
  control_plane_nsg_ids             = var.control_plane_nsg_ids
  control_plane_subnet_id           = var.control_plane_subnet_id
  enable_ipv6                       = var.enable_ipv6
  image_signing_keys                = var.image_signing_keys
  kubernetes_version                = var.kubernetes_version
  oidc_discovery_enabled            = var.oidc_discovery_enabled
  oidc_token_auth_enabled           = var.oidc_token_auth_enabled
  oidc_token_authentication_config  = var.oidc_token_authentication_config
  persistent_volume_defined_tags    = var.persistent_volume_defined_tags
  persistent_volume_freeform_tags   = var.persistent_volume_freeform_tags
  pods_cidr                         = var.pods_cidr
  service_lb_defined_tags           = var.service_lb_defined_tags
  service_lb_freeform_tags          = var.service_lb_freeform_tags
  service_lb_subnet_id              = var.service_lb_subnet_id
  services_cidr                     = var.services_cidr
  state_id                          = var.state_id
  tag_namespace                     = var.tag_namespace
  use_defined_tags                  = var.use_defined_tags
  use_signed_images                 = var.use_signed_images
  vcn_id                            = var.vcn_id
}
