module "default-vcn" {
  source           = "oracle-terraform-modules/default-vcn/oci"
  version          = "1.0.0"
  compartment_ocid = var.compartment_ocid
  subnet_dns_label = var.subnet_dns_label
  vcn_cidr         = var.vcn_cidr
  vcn_display_name = var.vcn_display_name
  vcn_dns_label    = var.vcn_dns_label
}
