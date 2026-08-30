output "ig_route_id" {
  value       = module.vcn.ig_route_id
  description = "id of internet gateway route table"
}

output "internet_gateway_id" {
  value       = module.vcn.internet_gateway_id
  description = "id of internet gateway if it is created"
}

output "nat_gateway_id" {
  value       = module.vcn.nat_gateway_id
  description = "id of nat gateway if it is created"
}

output "nat_route_id" {
  value       = module.vcn.nat_route_id
  description = "id of VCN NAT gateway route table"
}

output "vcn_id" {
  value       = module.vcn.vcn_id
  description = "id of vcn that is created"
}
