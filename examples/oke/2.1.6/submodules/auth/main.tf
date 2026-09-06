module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "2.1.6"
  ocir    = var.ocir
}
