output "admin_private_ip" {
  value       = module.oke.admin_private_ip
  description = ""
}

output "bastion_public_ip" {
  value       = module.oke.bastion_public_ip
  description = ""
}

output "kubeconfig" {
  value       = module.oke.kubeconfig
  description = ""
}

output "ocirtoken" {
  value       = module.oke.ocirtoken
  description = ""
}

output "ssh_to_admin" {
  value       = module.oke.ssh_to_admin
  description = ""
}

output "ssh_to_bastion" {
  value       = module.oke.ssh_to_bastion
  description = ""
}
