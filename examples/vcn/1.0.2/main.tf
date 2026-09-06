module "vcn" {
  source                   = "oracle-terraform-modules/vcn/oci"
  version                  = "1.0.2"
  compartment_id           = var.compartment_id
  internet_gateway_enabled = var.internet_gateway_enabled
  label_prefix             = var.label_prefix
  nat_gateway_enabled      = var.nat_gateway_enabled
  region                   = var.region
  service_gateway_enabled  = var.service_gateway_enabled
  tags                     = var.tags
  vcn_cidr                 = var.vcn_cidr
  vcn_dns_label            = var.vcn_dns_label
  vcn_name                 = var.vcn_name
}
