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
  source                       = "oracle-terraform-modules/oke/oci"
  version                      = "5.1.8"
  allow_bastion_cluster_access = var.allow_bastion_cluster_access
  allow_node_port_access       = var.allow_node_port_access
  allow_pod_internet_access    = var.allow_pod_internet_access
  allow_rules_internal_lb      = var.allow_rules_internal_lb
  allow_rules_public_lb        = var.allow_rules_public_lb
  allow_rules_workers          = var.allow_rules_workers
  allow_worker_internet_access = var.allow_worker_internet_access
  allow_worker_ssh_access      = var.allow_worker_ssh_access
  assign_dns                   = var.assign_dns
  bastion_allowed_cidrs        = var.bastion_allowed_cidrs
  bastion_is_public            = var.bastion_is_public
  cni_type                     = var.cni_type
  compartment_id               = var.compartment_id
  control_plane_allowed_cidrs  = var.control_plane_allowed_cidrs
  control_plane_is_public      = var.control_plane_is_public
  create_bastion               = var.create_bastion
  create_cluster               = var.create_cluster
  create_operator              = var.create_operator
  defined_tags                 = var.defined_tags
  drg_attachments              = var.drg_attachments
  enable_waf                   = var.enable_waf
  freeform_tags                = var.freeform_tags
  ig_route_table_id            = var.ig_route_table_id
  load_balancers               = var.load_balancers
  nat_route_table_id           = var.nat_route_table_id
  nsgs                         = var.nsgs
  state_id                     = var.state_id
  subnets                      = var.subnets
  tag_namespace                = var.tag_namespace
  use_defined_tags             = var.use_defined_tags
  vcn_cidrs                    = var.vcn_cidrs
  vcn_id                       = var.vcn_id
  worker_is_public             = var.worker_is_public
}
