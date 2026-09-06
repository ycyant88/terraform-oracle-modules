output "region1_dr_protection_group_id" {
  value       = module.fsdr.region1_dr_protection_group_id
  description = "Protection group OCID of region1"
}

output "region1_members" {
  value       = module.fsdr.region1_members
  description = "Members of the existing protection group in region1"
}

output "region1_plan_ids" {
  value       = module.fsdr.region1_plan_ids
  description = "OCID of region1 plans"
}

output "region2_dr_protection_group_id" {
  value       = module.fsdr.region2_dr_protection_group_id
  description = "Protection group OCID of region2"
}

output "region2_members" {
  value       = module.fsdr.region2_members
  description = "Members of the existing protection group in region2"
}

output "region2_plan_ids" {
  value       = module.fsdr.region2_plan_ids
  description = "OCID of region2 plans"
}
