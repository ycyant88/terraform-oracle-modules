output "bastion_public_ip" {
  value       = module.oke.bastion_public_ip
  description = "public ip address of bastion host"
}

output "bastion_service_instance_id" {
  value       = module.oke.bastion_service_instance_id
  description = ""
}

output "cloudinit_instance_pool" {
  value       = module.oke.cloudinit_instance_pool
  description = "Instance pool cloud-init (when debug_mode==true)"
}

output "cloudinit_node_pool" {
  value       = module.oke.cloudinit_node_pool
  description = "Node pool cloud-init (when debug_mode==true)"
}

output "cluster_endpoints" {
  value       = module.oke.cluster_endpoints
  description = "Endpoints for the Kubernetes cluster"
}

output "cluster_id" {
  value       = module.oke.cluster_id
  description = "ID of the Kubernetes cluster"
}

output "drg_id" {
  value       = module.oke.drg_id
  description = "ID of DRG. use this DRG id to add additional resources"
}

output "fss_id" {
  value       = module.oke.fss_id
  description = ""
}

output "ig_route_id" {
  value       = module.oke.ig_route_id
  description = "id of route table to vcn internet gateway"
}

output "int_lb_nsg" {
  value       = module.oke.int_lb_nsg
  description = "id of default NSG that can be associated with the internal load balancer"
}

output "nat_route_id" {
  value       = module.oke.nat_route_id
  description = "id of route table to nat gateway attached to vcn"
}

output "nodepool_ids" {
  value       = module.oke.nodepool_ids
  description = "Map of Nodepool names and IDs"
}

output "nsg_ids" {
  value       = module.oke.nsg_ids
  description = "map of NSG ids (cp, worker, int_lb, pub_lb, pod) used by OKE."
}

output "operator_private_ip" {
  value       = module.oke.operator_private_ip
  description = "private ip address of operator host"
}

output "pub_lb_nsg" {
  value       = module.oke.pub_lb_nsg
  description = "id of default NSG that can be associated with the internal load balancer"
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
  description = "map of subnet ids (cp, worker, int_lb, pub_lb, pod) used by OKE."
}

output "vcn_id" {
  value       = module.oke.vcn_id
  description = "id of vcn where oke is created. use this vcn id to add additional resources"
}

output "worker_availability_domains" {
  value       = module.oke.worker_availability_domains
  description = "All worker pool ADs"
}

output "worker_cluster_ca_cert" {
  value       = module.oke.worker_cluster_ca_cert
  description = "OKE cluster CA certificate (when debug_mode==true)"
}

output "worker_kubeconfig" {
  value       = module.oke.worker_kubeconfig
  description = "OKE kubeconfig (when debug_mode==true)"
}

output "worker_np_options" {
  value       = module.oke.worker_np_options
  description = "OKE node pool options (when debug_mode==true)"
}

output "worker_pool_ids" {
  value       = module.oke.worker_pool_ids
  description = "All active worker pool OCIDs"
}

output "worker_pools_enabled" {
  value       = module.oke.worker_pools_enabled
  description = "Desired worker pool state to be applied"
}
