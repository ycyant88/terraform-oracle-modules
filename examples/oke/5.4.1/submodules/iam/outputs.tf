output "dynamic_group_ids" {
  value       = module.oke.dynamic_group_ids
  description = "Cluster IAM dynamic group IDs"
}

output "policy_statements" {
  value       = module.oke.policy_statements
  description = "Cluster IAM policy statements"
}
