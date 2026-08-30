output "instance_id" {
  value       = module.iam.instance_id
  description = "ocid of created instances. "
}

output "instance_password" {
  value       = module.iam.instance_password
  description = "Passwords to login to Windows instance. "
}

output "instance_username" {
  value       = module.iam.instance_username
  description = "Usernames to login to Windows instance. "
}

output "private_ip" {
  value       = module.iam.private_ip
  description = "Private IPs of created instances. "
}

output "public_ip" {
  value       = module.iam.public_ip
  description = "Public IPs of created instances. "
}

output "volume_attachment_ipv4" {
  value       = module.iam.volume_attachment_ipv4
  description = "The volume's iSCSI IP addresses. "
}

output "volume_attachment_iqn" {
  value       = module.iam.volume_attachment_iqn
  description = "Unique IDs assigned to iSCSI devices. Used when attaching a volume to an instance. "
}

output "volume_attachment_port" {
  value       = module.iam.volume_attachment_port
  description = "The volume's iSCSI ports. "
}
