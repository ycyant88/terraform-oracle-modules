output "instance_all_attributes" {
  value       = module.compute-instance.instance_all_attributes
  description = "all attributes of created instance"
}

output "instance_id" {
  value       = module.compute-instance.instance_id
  description = "ocid of created instances. "
}

output "instance_password" {
  value       = module.compute-instance.instance_password
  description = "Passwords to login to Windows instance. "
}

output "instance_username" {
  value       = module.compute-instance.instance_username
  description = "Usernames to login to Windows instance. "
}

output "instances_summary" {
  value       = module.compute-instance.instances_summary
  description = "Private and Public IPs for each instance."
}

output "private_ip" {
  value       = module.compute-instance.private_ip
  description = "Private IPs of created instances. "
}

output "private_ips_all_attributes" {
  value       = module.compute-instance.private_ips_all_attributes
  description = "all attributes of created private ips"
}

output "public_ip" {
  value       = module.compute-instance.public_ip
  description = "Public IPs of created instances. "
}

output "public_ip_all_attributes" {
  value       = module.compute-instance.public_ip_all_attributes
  description = "all attributes of created public ip"
}

output "vnic_attachment_all_attributes" {
  value       = module.compute-instance.vnic_attachment_all_attributes
  description = "all attributes of created vnic attachments"
}

output "volume_all_attributes" {
  value       = module.compute-instance.volume_all_attributes
  description = "all attributes of created volumes"
}

output "volume_attachment_all_attributes" {
  value       = module.compute-instance.volume_attachment_all_attributes
  description = "all attributes of created volumes attachments"
}
