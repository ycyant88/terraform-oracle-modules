output "bastion_ip" {
  value       = module.bastion.bastion_ip
  description = ""
}

output "bastion_nsg_id" {
  value       = module.bastion.bastion_nsg_id
  description = ""
}

output "id" {
  value       = module.bastion.id
  description = ""
}

output "public_ip" {
  value       = module.bastion.public_ip
  description = ""
}
