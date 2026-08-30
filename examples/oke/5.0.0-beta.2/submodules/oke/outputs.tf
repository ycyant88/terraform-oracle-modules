output "apiserver_private_endpoint" {
  value       = module.oke.apiserver_private_endpoint
  description = "OKE cluster apiserver private IP address"
}

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

output "expected_node_count" {
  value       = module.oke.expected_node_count
  description = "# of nodes expected from configured node pools"
}

output "nodepool_ids" {
  value       = module.oke.nodepool_ids
  description = ""
}
