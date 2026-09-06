output "drg_all_attributes" {
  value       = module.drg.drg_all_attributes
  description = "all attributes of created drg"
}

output "drg_attachment_all_attributes" {
  value       = module.drg.drg_attachment_all_attributes
  description = "all attributes related to drg attachment"
}

output "drg_display_name" {
  value       = module.drg.drg_display_name
  description = "display name of drg if it is created"
}

output "drg_id" {
  value       = module.drg.drg_id
  description = "id of drg if it is created"
}

output "drg_summary" {
  value       = module.drg.drg_summary
  description = "drg information summary"
}

output "rpc_all_attributes" {
  value       = module.drg.rpc_all_attributes
  description = "all attributes of created RPC"
}

output "rpc_display_name" {
  value       = module.drg.rpc_display_name
  description = "display name of RPC if it is created"
}

output "rpc_id" {
  value       = module.drg.rpc_id
  description = "id of RPC if it is created"
}
