module "vcn" {
  source         = "oracle-terraform-modules/vcn/oci"
  version        = "3.5.0"
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  enable_ipv6    = var.enable_ipv6
  freeform_tags  = var.freeform_tags
  ig_route_id    = var.ig_route_id
  nat_route_id   = var.nat_route_id
  subnets        = var.subnets
  vcn_id         = var.vcn_id
}
