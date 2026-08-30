output "default_dhcp_options_id" {
  value       = module.default-vcn.default_dhcp_options_id
  description = "ocid of default DHCP options. "
}

output "default_route_table_id" {
  value       = module.default-vcn.default_route_table_id
  description = "ocid of default route table. "
}

output "default_security_list_id" {
  value       = module.default-vcn.default_security_list_id
  description = "ocid of default security list. "
}

output "internet_gateway_id" {
  value       = module.default-vcn.internet_gateway_id
  description = "ocid of internet gateway. "
}

output "subnet_ids" {
  value       = module.default-vcn.subnet_ids
  description = "ocid of subnet ids. "
}

output "vcn_id" {
  value       = module.default-vcn.vcn_id
  description = "ocid of created VCN. "
}
