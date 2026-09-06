module "olcne" {
  source               = "oracle-terraform-modules/olcne/oci"
  version              = "0.1.0"
  olcne_general        = var.olcne_general
  olcne_network_access = var.olcne_network_access
  olcne_network_vcn    = var.olcne_network_vcn
}
