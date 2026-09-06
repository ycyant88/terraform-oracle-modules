module "fsdr" {
  source         = "oracle-terraform-modules/fsdr/oci"
  version        = "1.0.5"
  region1_config = var.region1_config
  region2_config = var.region2_config
}
