output "cluster_id" {
  value       = module.oke.cluster_id
  description = ""
}

output "cluster_kms_dynamic_group_id" {
  value       = module.oke.cluster_kms_dynamic_group_id
  description = ""
}

output "endpoints" {
  value       = module.oke.endpoints
  description = ""
}

output "nodepool_ids" {
  value       = module.oke.nodepool_ids
  description = ""
}
