output "cluster_id" {
  value       = module.oke.cluster_id
  description = ""
}

output "endpoints" {
  value       = module.oke.endpoints
  description = ""
}

output "oidc_discovery_endpoint" {
  value       = module.oke.oidc_discovery_endpoint
  description = ""
}
