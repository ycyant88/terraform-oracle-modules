output "bastion_public_ip" {
  value       = module.oke.bastion_public_ip
  description = "public ip address of bastion host"
}

output "cluster_id" {
  value       = module.oke.cluster_id
  description = "ID of the Kubernetes cluster"
}

output "ig_route_id" {
  value       = module.oke.ig_route_id
  description = "id of route table to vcn internet gateway"
}

output "kubeconfig" {
  value       = module.oke.kubeconfig
  description = "convenient command to set KUBECONFIG environment variable before running kubectl locally"
}

output "nat_route_id" {
  value       = module.oke.nat_route_id
  description = "id of route table to nat gateway attached to vcn"
}

output "nodepool_ids" {
  value       = module.oke.nodepool_ids
  description = "Map of Nodepool names and IDs"
}

output "operator_private_ip" {
  value       = module.oke.operator_private_ip
  description = "private ip address of operator host"
}

output "ssh_to_bastion" {
  value       = module.oke.ssh_to_bastion
  description = "convenient command to ssh to the bastion host"
}

output "ssh_to_operator" {
  value       = module.oke.ssh_to_operator
  description = "convenient command to ssh to the operator host"
}

output "subnet_ids" {
  value       = module.oke.subnet_ids
  description = "map of subnet ids (worker, int_lb, pub_lb) used by OKE."
}

output "vcn_id" {
  value       = module.oke.vcn_id
  description = "id of vcn where oke is created. use this vcn id to add additional resources"
}
