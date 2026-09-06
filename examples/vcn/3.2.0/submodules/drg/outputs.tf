output "drg_all_attributes" {
  value       = module.vcn.drg_all_attributes
  description = "all attributes of created drg"
}

output "drg_attachment_all_attributes" {
  value       = module.vcn.drg_attachment_all_attributes
  description = "all attributes related to drg attachment"
}

output "drg_display_name" {
  value       = module.vcn.drg_display_name
  description = "display name of drg if it is created"
}

output "drg_id" {
  value       = module.vcn.drg_id
  description = "id of drg if it is created"
}

output "drg_summary" {
  value       = module.vcn.drg_summary
  description = "drg information summary"
}

output "rpc_all_attributes" {
  value       = module.vcn.rpc_all_attributes
  description = "all attributes of created RPC"
}

output "rpc_display_name" {
  value       = module.vcn.rpc_display_name
  description = "display name of RPC if it is created"
}

output "rpc_id" {
  value       = module.vcn.rpc_id
  description = "id of RPC if it is created"
}
