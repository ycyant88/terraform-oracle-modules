module "vcn" {
  source                   = "oracle-terraform-modules/vcn/oci"
  version                  = "1.0.1"
  api_fingerprint          = var.api_fingerprint
  api_private_key_path     = var.api_private_key_path
  compartment_id           = var.compartment_id
  internet_gateway_enabled = var.internet_gateway_enabled
  label_prefix             = var.label_prefix
  nat_gateway_enabled      = var.nat_gateway_enabled
  region                   = var.region
  service_gateway_enabled  = var.service_gateway_enabled
  tags                     = var.tags
  tenancy_id               = var.tenancy_id
  user_id                  = var.user_id
  vcn_cidr                 = var.vcn_cidr
  vcn_dns_label            = var.vcn_dns_label
  vcn_name                 = var.vcn_name
}
