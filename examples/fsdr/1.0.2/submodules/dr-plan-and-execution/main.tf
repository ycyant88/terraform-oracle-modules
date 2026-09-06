module "fsdr" {
  source            = "oracle-terraform-modules/fsdr/oci"
  version           = "1.0.2"
  dr_plan           = var.dr_plan
  dr_plan_execution = var.dr_plan_execution
}
