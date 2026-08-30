output "ad_names" {
  value       = module.base.ad_names
  description = "list of ADs in the selected region"
}

output "admin_private_ip" {
  value       = module.base.admin_private_ip
  description = "private ip address of admin host"
}

output "bastion_public_ip" {
  value       = module.base.bastion_public_ip
  description = "public ip address of admin host"
}

output "group_name" {
  value       = module.base.group_name
  description = "name of dynamic group for admin host instance_principal"
}

output "home_region" {
  value       = module.base.home_region
  description = "tenancy home region"
}

output "ig_route_id" {
  value       = module.base.ig_route_id
  description = "Internet Gateway id"
}

output "nat_gateway_id" {
  value       = module.base.nat_gateway_id
  description = "NAT gateway id of VCN"
}

output "nat_route_id" {
  value       = module.base.nat_route_id
  description = "NAT Routing table id"
}

output "ssh_to_admin" {
  value       = module.base.ssh_to_admin
  description = "convenient output to ssh to the admin host"
}

output "ssh_to_bastion" {
  value       = module.base.ssh_to_bastion
  description = "convenient output to ssh to the bastion host"
}

output "vcn_id" {
  value       = module.base.vcn_id
  description = "VCN id"
}
