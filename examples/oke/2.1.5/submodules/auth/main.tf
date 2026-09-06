module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "2.1.5"
  ocir    = var.ocir
}
