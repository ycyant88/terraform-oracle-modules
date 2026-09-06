output "compartment_description" {
  value       = module.iam.compartment_description
  description = "Compartment description"
}

output "compartment_id" {
  value       = module.iam.compartment_id
  description = "Compartment ocid"
}

output "compartment_name" {
  value       = module.iam.compartment_name
  description = "Compartment name"
}

output "parent_compartment_id" {
  value       = module.iam.parent_compartment_id
  description = "Parent Compartment ocid"
}
