output "dynamic_group_id" {
  value       = module.iam.dynamic_group_id
  description = ""
}

output "dynamic_group_name" {
  value       = module.iam.dynamic_group_name
  description = ""
}

output "dynamic_group_policy_name" {
  value       = module.iam.dynamic_group_policy_name
  description = ""
}

output "name_ocid" {
  value       = module.iam.name_ocid
  description = "group name and associated OCID"
}
