module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "2.1.4"
  ocir    = var.ocir
}
