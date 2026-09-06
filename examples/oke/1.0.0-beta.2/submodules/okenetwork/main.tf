module "oke" {
  source             = "oracle-terraform-modules/oke/oci"
  version            = "1.0.0-beta.2"
  compartment_ocid   = var.compartment_ocid
  lb_subnet_type     = var.lb_subnet_type
  oke_general        = var.oke_general
  oke_network_vcn    = var.oke_network_vcn
  oke_network_worker = var.oke_network_worker
}
