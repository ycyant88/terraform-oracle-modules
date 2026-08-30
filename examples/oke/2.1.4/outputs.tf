output "admin_private_ip" {
  value       = module.oke.admin_private_ip
  description = "private ip address of admin host"
}

output "bastion_public_ip" {
  value       = module.oke.bastion_public_ip
  description = "public ip address of bastion host"
}

output "kubeconfig" {
  value       = module.oke.kubeconfig
  description = "convenient command to set KUBECONFIG environment variable before running kubectl locally"
}

output "ocirtoken" {
  value       = module.oke.ocirtoken
  description = "authentication token for ocir"
}

output "ssh_to_admin" {
  value       = module.oke.ssh_to_admin
  description = "convenient command to ssh to the admin host"
}

output "ssh_to_bastion" {
  value       = module.oke.ssh_to_bastion
  description = "convenient command to ssh to the bastion host"
}
