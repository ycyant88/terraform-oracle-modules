module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "2.1.0"
  ocir    = var.ocir
}
