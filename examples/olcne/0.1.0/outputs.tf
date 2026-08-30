output "ssh_to_bastion" {
  value       = module.olcne.ssh_to_bastion
  description = "ssh to bastion"
}

output "ssh_to_master" {
  value       = module.olcne.ssh_to_master
  description = "ssh to primary master node"
}

output "ssh_to_operator" {
  value       = module.olcne.ssh_to_operator
  description = "ssh to operator"
}
