module "oke" {
  source             = "oracle-terraform-modules/oke/oci"
  version            = "3.0.0-RC4"
  compartment_id     = var.compartment_id
  label_prefix       = var.label_prefix
  lb_subnet_type     = var.lb_subnet_type
  oke_network_vcn    = var.oke_network_vcn
  oke_network_worker = var.oke_network_worker
  public_lb_ports    = var.public_lb_ports
  waf_enabled        = var.waf_enabled
}
