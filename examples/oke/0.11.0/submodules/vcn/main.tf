module "oke" {
  source                 = "oracle-terraform-modules/oke/oci"
  version                = "0.11.0"
  compartment_ocid       = var.compartment_ocid
  create_nat_gateway     = var.create_nat_gateway
  create_service_gateway = var.create_service_gateway
  label_prefix           = var.label_prefix
  nat_gateway_name       = var.nat_gateway_name
  service_gateway_name   = var.service_gateway_name
  vcn_cidr               = var.vcn_cidr
  vcn_dns_name           = var.vcn_dns_name
  vcn_name               = var.vcn_name
}
