output "apiserver_private_host" {
  value       = module.oke.apiserver_private_host
  description = "Private OKE cluster endpoint address"
}

output "availability_domains" {
  value       = module.oke.availability_domains
  description = "Availability domains for tenancy & region"
}

output "bastion_id" {
  value       = module.oke.bastion_id
  description = "ID of bastion instance"
}

output "bastion_nsg_id" {
  value       = module.oke.bastion_nsg_id
  description = "Network Security Group for bastion host(s)."
}

output "bastion_public_ip" {
  value       = module.oke.bastion_public_ip
  description = "Public IP address of bastion host"
}

output "bastion_subnet_id" {
  value       = module.oke.bastion_subnet_id
  description = ""
}

output "cluster_ca_cert" {
  value       = module.oke.cluster_ca_cert
  description = "OKE cluster CA certificate"
}

output "cluster_endpoints" {
  value       = module.oke.cluster_endpoints
  description = "Endpoints for the OKE cluster"
}

output "cluster_id" {
  value       = module.oke.cluster_id
  description = "ID of the OKE cluster"
}

output "cluster_kubeconfig" {
  value       = module.oke.cluster_kubeconfig
  description = "OKE kubeconfig"
}

output "control_plane_nsg_id" {
  value       = module.oke.control_plane_nsg_id
  description = "Network Security Group for Kubernetes control plane(s)."
}

output "control_plane_subnet_id" {
  value       = module.oke.control_plane_subnet_id
  description = ""
}

output "drg_id" {
  value       = module.oke.drg_id
  description = "Dynamic routing gateway ID"
}

output "dynamic_group_ids" {
  value       = module.oke.dynamic_group_ids
  description = "Cluster IAM dynamic group IDs"
}

output "fss_id" {
  value       = module.oke.fss_id
  description = "FSS ID"
}

output "fss_nsg_id" {
  value       = module.oke.fss_nsg_id
  description = "Network Security Group for File Storage Service resources."
}

output "fss_subnet_id" {
  value       = module.oke.fss_subnet_id
  description = ""
}

output "ig_route_table_id" {
  value       = module.oke.ig_route_table_id
  description = "Internet gateway route table ID"
}

output "int_lb_nsg_id" {
  value       = module.oke.int_lb_nsg_id
  description = "Network Security Group for internal load balancers."
}

output "int_lb_subnet_id" {
  value       = module.oke.int_lb_subnet_id
  description = ""
}

output "nat_route_table_id" {
  value       = module.oke.nat_route_table_id
  description = "NAT gateway route table ID"
}

output "network_security_rules" {
  value       = module.oke.network_security_rules
  description = ""
}

output "nsg_ids" {
  value       = module.oke.nsg_ids
  description = "Map of network security group IDs by role for the cluster and associated resources."
}

output "operator_id" {
  value       = module.oke.operator_id
  description = "ID of operator instance"
}

output "operator_nsg_id" {
  value       = module.oke.operator_nsg_id
  description = "Network Security Group for operator host(s)."
}

output "operator_private_ip" {
  value       = module.oke.operator_private_ip
  description = "Private IP address of operator host"
}

output "operator_subnet_id" {
  value       = module.oke.operator_subnet_id
  description = ""
}

output "pod_nsg_id" {
  value       = module.oke.pod_nsg_id
  description = "Network Security Group for pods."
}

output "pod_subnet_id" {
  value       = module.oke.pod_subnet_id
  description = ""
}

output "policy_statements" {
  value       = module.oke.policy_statements
  description = "Cluster IAM policy statements"
}

output "pub_lb_nsg_id" {
  value       = module.oke.pub_lb_nsg_id
  description = "Network Security Group for public load balancers."
}

output "pub_lb_subnet_id" {
  value       = module.oke.pub_lb_subnet_id
  description = ""
}

output "ssh_to_bastion" {
  value       = module.oke.ssh_to_bastion
  description = "SSH command for bastion host"
}

output "ssh_to_operator" {
  value       = module.oke.ssh_to_operator
  description = "SSH command for operator host"
}

output "state_id" {
  value       = module.oke.state_id
  description = ""
}

output "subnet_cidrs" {
  value       = module.oke.subnet_cidrs
  description = "Map of provided/calculated subnet CIDR ranges by role for the cluster."
}

output "subnet_ids" {
  value       = module.oke.subnet_ids
  description = "Map of subnet ids by role for the cluster and associated resources."
}

output "vcn_id" {
  value       = module.oke.vcn_id
  description = "VCN ID"
}

output "worker_instance_ids" {
  value       = module.oke.worker_instance_ids
  description = "Created worker instance IDs (mode == 'instance'). Excludes pool-managed instances."
}

output "worker_nsg_id" {
  value       = module.oke.worker_nsg_id
  description = "Network Security Group for worker nodes."
}

output "worker_pool_ids" {
  value       = module.oke.worker_pool_ids
  description = "Enabled worker pool IDs"
}

output "worker_pools" {
  value       = module.oke.worker_pools
  description = "Enabled worker pools"
}

output "worker_subnet_id" {
  value       = module.oke.worker_subnet_id
  description = ""
}
