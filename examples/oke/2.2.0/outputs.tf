output "admin_private_ip" {
  value       = module.oke.admin_private_ip
  description = "private ip address of admin host"
}

output "bastion_public_ip" {
  value       = module.oke.bastion_public_ip
  description = "public ip address of bastion host"
}

output "ig_route_id" {
  value       = module.oke.ig_route_id
  description = "id of route table to vcn internet gateway"
}

output "kubeconfig" {
  value       = module.oke.kubeconfig
  description = "convenient command to set KUBECONFIG environment variable before running kubectl locally"
}

output "nat_route_id" {
  value       = module.oke.nat_route_id
  description = "id of route table to nat gateway attached to vcn"
}

output "ssh_to_admin" {
  value       = module.oke.ssh_to_admin
  description = "convenient command to ssh to the admin host"
}

output "ssh_to_bastion" {
  value       = module.oke.ssh_to_bastion
  description = "convenient command to ssh to the bastion host"
}

output "subnet_ids" {
  value       = module.oke.subnet_ids
  description = "map of subnet ids (worker, int_lb, pub_lb) used by OKE."
}

output "vcn_id" {
  value       = module.oke.vcn_id
  description = "id of vcn where oke is created. use this vcn id to add additional resources"
}
