output "name_ocid" {
  value       = module.iam.name_ocid
  description = "list of username and associated OCID"
}

output "names" {
  value       = module.iam.names
  description = "list of usernames"
}

output "user_description" {
  value       = module.iam.user_description
  description = "list of users descriptions"
}

output "user_id" {
  value       = module.iam.user_id
  description = "list of users OCID"
}
