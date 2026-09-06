module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "2.1.3"
  ocir    = var.ocir
}
