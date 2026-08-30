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
