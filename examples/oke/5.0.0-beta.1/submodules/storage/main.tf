module "oke" {
  source              = "oracle-terraform-modules/oke/oci"
  version             = "5.0.0-beta.1"
  assign_dns          = var.assign_dns
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  fss_mount_path      = var.fss_mount_path
  label_prefix        = var.label_prefix
  max_fs_stat_bytes   = var.max_fs_stat_bytes
  max_fs_stat_files   = var.max_fs_stat_files
  nat_route_id        = var.nat_route_id
  subnets             = var.subnets
  tenancy_id          = var.tenancy_id
  vcn_id              = var.vcn_id
}
