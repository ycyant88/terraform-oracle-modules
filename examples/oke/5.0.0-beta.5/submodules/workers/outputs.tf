output "worker_count_expected" {
  value       = module.oke.worker_count_expected
  description = "# of nodes expected from created worker pools"
}

output "worker_instance_ids" {
  value       = module.oke.worker_instance_ids
  description = "Created worker instance IDs (mode == 'instance'). Excludes pool-managed instances."
}

output "worker_pool_ids" {
  value       = module.oke.worker_pool_ids
  description = "Created worker pool IDs"
}

output "worker_pools" {
  value       = module.oke.worker_pools
  description = "Created worker pools"
}
