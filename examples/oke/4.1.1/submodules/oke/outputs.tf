output "cluster_id" {
  value       = module.oke.cluster_id
  description = ""
}

output "kms_dynamic_group_id" {
  value       = module.oke.kms_dynamic_group_id
  description = ""
}

output "nodepool_ids" {
  value       = module.oke.nodepool_ids
  description = ""
}
