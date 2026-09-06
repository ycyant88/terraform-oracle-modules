output "worker_count_expected" {
  value       = module.oke.worker_count_expected
  description = "# of nodes expected from created worker pools"
}

output "worker_drain_expected" {
  value       = module.oke.worker_drain_expected
  description = "# of nodes expected to be draining in worker pools"
}

output "worker_gpu_memory_cluster_ids" {
  value       = module.oke.worker_gpu_memory_cluster_ids
  description = "OCIDs of created GPU Memory Clusters keyed by '<pool_name>###<gpu_memory_fabric_id>'."
}

output "worker_gpu_memory_clusters" {
  value       = module.oke.worker_gpu_memory_clusters
  description = "Created GPU Memory Clusters keyed by '<pool_name>###<gpu_memory_fabric_id>'."
}

output "worker_instances" {
  value       = module.oke.worker_instances
  description = "Created worker pools (mode == 'instance')"
}

output "worker_pool_autoscale_expected" {
  value       = module.oke.worker_pool_autoscale_expected
  description = "# of worker pools expected with autoscale enabled from created worker pools"
}

output "worker_pool_ids" {
  value       = module.oke.worker_pool_ids
  description = "Created worker pool IDs"
}

output "worker_pool_ips" {
  value       = module.oke.worker_pool_ips
  description = "Created worker instance private IPs by pool for available modes ('node-pool', 'instance')."
}

output "worker_pools" {
  value       = module.oke.worker_pools
  description = "Created worker pools (mode != 'instance')"
}
