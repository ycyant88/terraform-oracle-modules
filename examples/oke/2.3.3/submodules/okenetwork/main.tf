module "oke" {
  source             = "oracle-terraform-modules/oke/oci"
  version            = "2.3.3"
  compartment_id     = var.compartment_id
  label_prefix       = var.label_prefix
  lb_subnet_type     = var.lb_subnet_type
  oke_network_vcn    = var.oke_network_vcn
  oke_network_worker = var.oke_network_worker
  waf_enabled        = var.waf_enabled
}
