module "olcne" {
  source           = "oracle-terraform-modules/olcne/oci"
  version          = "0.1.0"
  compartment_id   = var.compartment_id
  int_lb_shape     = var.int_lb_shape
  int_lb_subnet_id = var.int_lb_subnet_id
  label_prefix     = var.label_prefix
  nsg_ids          = var.nsg_ids
  olcne_workers    = var.olcne_workers
  pub_lb_shape     = var.pub_lb_shape
  pub_lb_subnet_id = var.pub_lb_subnet_id
}
