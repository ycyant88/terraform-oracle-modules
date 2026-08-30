output "bastion_nsg_id" {
  value       = module.oke.bastion_nsg_id
  description = ""
}

output "control_plane_nsg_id" {
  value       = module.oke.control_plane_nsg_id
  description = ""
}

output "fss_nsg_id" {
  value       = module.oke.fss_nsg_id
  description = ""
}

output "int_lb_nsg_id" {
  value       = module.oke.int_lb_nsg_id
  description = ""
}

output "network_security_rules" {
  value       = module.oke.network_security_rules
  description = ""
}

output "nsg_ids" {
  value       = module.oke.nsg_ids
  description = ""
}

output "operator_nsg_id" {
  value       = module.oke.operator_nsg_id
  description = ""
}

output "pod_nsg_id" {
  value       = module.oke.pod_nsg_id
  description = ""
}

output "pub_lb_nsg_id" {
  value       = module.oke.pub_lb_nsg_id
  description = ""
}

output "subnet_cidrs" {
  value       = module.oke.subnet_cidrs
  description = ""
}

output "subnet_ids" {
  value       = module.oke.subnet_ids
  description = ""
}

output "worker_nsg_id" {
  value       = module.oke.worker_nsg_id
  description = ""
}
