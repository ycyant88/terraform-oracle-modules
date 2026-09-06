module "olcne" {
  source               = "oracle-terraform-modules/olcne/oci"
  version              = "0.1.0"
  oci_loadbalancer_id  = var.oci_loadbalancer_id
  olcne_general        = var.olcne_general
  olcne_worker         = var.olcne_worker
  olcne_worker_network = var.olcne_worker_network
}
