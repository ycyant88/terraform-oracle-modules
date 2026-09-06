module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "2.1.1"
  ocir    = var.ocir
}
