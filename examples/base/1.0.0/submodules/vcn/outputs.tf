output "ig_route_id" {
  value       = module.base.ig_route_id
  description = "id of internet gateway route table"
}

output "nat_gateway_id" {
  value       = module.base.nat_gateway_id
  description = "id of nat gateway if it is created"
}

output "nat_route_id" {
  value       = module.base.nat_route_id
  description = "id of VCN NAT gateway route table"
}

output "vcn_id" {
  value       = module.base.vcn_id
  description = "id of vcn that is created"
}
