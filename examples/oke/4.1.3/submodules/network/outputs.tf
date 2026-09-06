output "control_plane_nsg_id" {
  value       = module.oke.control_plane_nsg_id
  description = ""
}

output "int_lb" {
  value       = module.oke.int_lb
  description = ""
}

output "pub_lb" {
  value       = module.oke.pub_lb
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
