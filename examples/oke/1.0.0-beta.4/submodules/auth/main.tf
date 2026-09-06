module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "1.0.0-beta.4"
  ocir    = var.ocir
}
