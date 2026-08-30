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

output "ssh_to_bastion" {
  value       = module.oke.ssh_to_bastion
  description = ""
}
