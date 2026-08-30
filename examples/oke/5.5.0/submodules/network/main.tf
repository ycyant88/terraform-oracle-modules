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
  version                      = "5.5.0"
  allow_bastion_cluster_access = var.allow_bastion_cluster_access
  allow_node_port_access       = var.allow_node_port_access
  allow_pod_internet_access    = var.allow_pod_internet_access
  allow_rules_cp               = var.allow_rules_cp
  allow_rules_internal_lb      = var.allow_rules_internal_lb
  allow_rules_pods             = var.allow_rules_pods
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
  create_internet_gateway      = var.create_internet_gateway
  create_nat_gateway           = var.create_nat_gateway
  create_operator              = var.create_operator
  defined_tags                 = var.defined_tags
  drg_attachments              = var.drg_attachments
  enable_dual_stack_defaults   = var.enable_dual_stack_defaults
  enable_waf                   = var.enable_waf
  freeform_tags                = var.freeform_tags
  ig_route_table_id            = var.ig_route_table_id
  igw_ngw_mixed_route_id       = var.igw_ngw_mixed_route_id
  internet_gateway_id          = var.internet_gateway_id
  load_balancers               = var.load_balancers
  nat_gateway_id               = var.nat_gateway_id
  nat_route_table_id           = var.nat_route_table_id
  nsgs                         = var.nsgs
  state_id                     = var.state_id
  subnets                      = var.subnets
  tag_namespace                = var.tag_namespace
  use_defined_tags             = var.use_defined_tags
  use_stateless_rules          = var.use_stateless_rules
  vcn_cidrs                    = var.vcn_cidrs
  vcn_id                       = var.vcn_id
  vcn_ipv6_cidrs               = var.vcn_ipv6_cidrs
  worker_is_public             = var.worker_is_public
}
