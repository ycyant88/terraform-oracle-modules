terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "8.29.0"
    }
  }
}

provider "oci" {
  # Configuration options
}

module "oke" {
  source               = "oracle-terraform-modules/oke/oci"
  version              = "0.11.0"
  ad_names             = var.ad_names
  availability_domains = var.availability_domains
  compartment_ocid     = var.compartment_ocid
  ig_route_id          = var.ig_route_id
  label_prefix         = var.label_prefix
  nat_route_id         = var.nat_route_id
  newbits              = var.newbits
  subnets              = var.subnets
  tenancy_ocid         = var.tenancy_ocid
  vcn_cidr             = var.vcn_cidr
  vcn_id               = var.vcn_id
  worker_mode          = var.worker_mode
}
