output "apigw_accesslogid" {
  value       = module.logging.apigw_accesslogid
  description = "APIGateway access logs id"
}

output "apigw_execlogid" {
  value       = module.logging.apigw_execlogid
  description = "APIGateway execution logs id"
}

output "apigw_loggroupid" {
  value       = module.logging.apigw_loggroupid
  description = "APIGateway loggroup id"
}

output "devops_loggroupid" {
  value       = module.logging.devops_loggroupid
  description = "Devops loggroup id"
}

output "devops_logid" {
  value       = module.logging.devops_logid
  description = "Devops logs id"
}

output "email_acceptlogid" {
  value       = module.logging.email_acceptlogid
  description = "Email logs id"
}

output "email_loggroupid" {
  value       = module.logging.email_loggroupid
  description = "Email loggroup id"
}

output "email_relaylogid" {
  value       = module.logging.email_relaylogid
  description = "Email logs id"
}

output "event_loggroupid" {
  value       = module.logging.event_loggroupid
  description = "Event loggroup id"
}

output "event_logid" {
  value       = module.logging.event_logid
  description = "Event logs id"
}

output "func_loggroupid" {
  value       = module.logging.func_loggroupid
  description = "Function loggroup id"
}

output "func_logid" {
  value       = module.logging.func_logid
  description = "Function logs id"
}

output "int_loggroupid" {
  value       = module.logging.int_loggroupid
  description = "Integration loggroup id"
}

output "int_logid" {
  value       = module.logging.int_logid
  description = "Integration logs id"
}

output "lb_accesslogid" {
  value       = module.logging.lb_accesslogid
  description = "Loadbalancer access logs id"
}

output "lb_errorlogid" {
  value       = module.logging.lb_errorlogid
  description = "Loadbalancer error logs id"
}

output "lb_loggroupid" {
  value       = module.logging.lb_loggroupid
  description = "Loadbalancer loggroup id"
}

output "linux_loggroupid" {
  value       = module.logging.linux_loggroupid
  description = "Custom Linux loggroup id"
}

output "linux_logid" {
  value       = module.logging.linux_logid
  description = "Custom Linux logs id"
}

output "os_loggroupid" {
  value       = module.logging.os_loggroupid
  description = "ObjectStorage loggroup id"
}

output "os_readlogid" {
  value       = module.logging.os_readlogid
  description = "ObjectStorage read logs id"
}

output "os_writelogid" {
  value       = module.logging.os_writelogid
  description = "ObjectStorage write logs id"
}

output "vcn_loggroupid" {
  value       = module.logging.vcn_loggroupid
  description = "VCN subnet flowlogs loggroup id"
}

output "vcn_logid" {
  value       = module.logging.vcn_logid
  description = "VCN subnet flowlogs log id"
}

output "vpn_loggroupid" {
  value       = module.logging.vpn_loggroupid
  description = "VPN IPSEC loggroup id"
}

output "vpn_logid" {
  value       = module.logging.vpn_logid
  description = "VPN  IPSEC read logs id"
}

output "windows_loggroupid" {
  value       = module.logging.windows_loggroupid
  description = "Custom Windows loggroup id"
}

output "windows_logid" {
  value       = module.logging.windows_logid
  description = "Custom Windows logs id"
}
