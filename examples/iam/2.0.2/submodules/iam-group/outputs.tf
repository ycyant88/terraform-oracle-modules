output "group_description" {
  value       = module.iam.group_description
  description = "Group description"
}

output "group_id" {
  value       = module.iam.group_id
  description = "Group ocid"
}

output "group_name" {
  value       = module.iam.group_name
  description = "Group name"
}

output "group_policy_name" {
  value       = module.iam.group_policy_name
  description = "Group policy name"
}

output "name_ocid" {
  value       = module.iam.name_ocid
  description = "group name and associated OCID"
}
