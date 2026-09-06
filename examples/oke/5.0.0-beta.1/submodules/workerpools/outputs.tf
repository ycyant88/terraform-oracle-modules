output "expected_node_count" {
  value       = module.oke.expected_node_count
  description = "# of nodes expected from enabled worker pools"
}

output "np_options" {
  value       = module.oke.np_options
  description = "OKE node pool options"
}

output "worker_availability_domains" {
  value       = module.oke.worker_availability_domains
  description = "Worker availability domains"
}

output "worker_cluster_networks" {
  value       = module.oke.worker_cluster_networks
  description = "Self-managed Cluster Networks"
}

output "worker_instance_pools" {
  value       = module.oke.worker_instance_pools
  description = "Self-managed Instance Pools"
}

output "worker_node_pools" {
  value       = module.oke.worker_node_pools
  description = "OKE-managed Node Pools"
}

output "worker_pool_ids" {
  value       = module.oke.worker_pool_ids
  description = "OKE worker pool OCIDs"
}

output "worker_pools_active" {
  value       = module.oke.worker_pools_active
  description = "Worker pools provisioned in Terraform state"
}

output "worker_pools_enabled" {
  value       = module.oke.worker_pools_enabled
  description = "Worker pools enabled in configuration"
}
