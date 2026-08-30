output "ig_route_all_attributes" {
  value       = module.vcn.ig_route_all_attributes
  description = "all attributes of created ig route table"
}

output "ig_route_id" {
  value       = module.vcn.ig_route_id
  description = "id of internet gateway route table"
}

output "internet_gateway_all_attributes" {
  value       = module.vcn.internet_gateway_all_attributes
  description = "all attributes of created internet gateway"
}

output "internet_gateway_id" {
  value       = module.vcn.internet_gateway_id
  description = "id of internet gateway if it is created"
}

output "lpg_all_attributes" {
  value       = module.vcn.lpg_all_attributes
  description = "all attributes of created lpg"
}

output "nat_gateway_all_attributes" {
  value       = module.vcn.nat_gateway_all_attributes
  description = "all attributes of created nat gateway"
}

output "nat_gateway_id" {
  value       = module.vcn.nat_gateway_id
  description = "id of nat gateway if it is created"
}

output "nat_route_all_attributes" {
  value       = module.vcn.nat_route_all_attributes
  description = "all attributes of created nat gateway route table"
}

output "nat_route_id" {
  value       = module.vcn.nat_route_id
  description = "id of VCN NAT gateway route table"
}

output "service_gateway_all_attributes" {
  value       = module.vcn.service_gateway_all_attributes
  description = "all attributes of created service gateway"
}

output "service_gateway_id" {
  value       = module.vcn.service_gateway_id
  description = "id of service gateway if it is created"
}

output "sgw_route_id" {
  value       = module.vcn.sgw_route_id
  description = "id of VCN Service gateway route table"
}

output "subnet_all_attributes" {
  value       = module.vcn.subnet_all_attributes
  description = ""
}

output "subnet_id" {
  value       = module.vcn.subnet_id
  description = ""
}

output "vcn_all_attributes" {
  value       = module.vcn.vcn_all_attributes
  description = "all attributes of created vcn"
}

output "vcn_id" {
  value       = module.vcn.vcn_id
  description = "id of vcn that is created"
}
