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

output "private_ip" {
  value       = module.compute-instance.private_ip
  description = "Private IPs of created instances. "
}

output "public_ip" {
  value       = module.compute-instance.public_ip
  description = "Public IPs of created instances. "
}
