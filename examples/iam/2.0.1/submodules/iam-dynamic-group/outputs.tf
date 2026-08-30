output "dynamic_group_id" {
  value       = module.iam.dynamic_group_id
  description = "Dynamic Group ocid"
}

output "dynamic_group_name" {
  value       = module.iam.dynamic_group_name
  description = "Dynamic Group name"
}

output "dynamic_group_policy_name" {
  value       = module.iam.dynamic_group_policy_name
  description = "Dynamic Group policy name"
}

output "name_ocid" {
  value       = module.iam.name_ocid
  description = "Dynamic Group name and associated OCID"
}
