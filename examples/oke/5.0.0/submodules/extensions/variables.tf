variable "bastion_host" {
  description = ""
  type        = string
  default     = ""
}

variable "bastion_user" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_autoscaler_helm_values" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "cluster_autoscaler_helm_values_files" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "cluster_autoscaler_helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_autoscaler_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "cluster_autoscaler_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "cni_type" {
  description = ""
  type        = string
  default     = ""
}

variable "dcgm_exporter_helm_values" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "dcgm_exporter_helm_values_files" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "dcgm_exporter_helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "dcgm_exporter_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "dcgm_exporter_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "dcgm_exporter_reapply" {
  description = ""
  type        = bool
  default     = ""
}

variable "expected_autoscale_worker_pools" {
  description = ""
  type        = number
  default     = ""
}

variable "expected_node_count" {
  description = ""
  type        = number
  default     = ""
}

variable "gatekeeper_helm_values" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "gatekeeper_helm_values_files" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "gatekeeper_helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "gatekeeper_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "gatekeeper_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "kubernetes_version" {
  description = ""
  type        = string
  default     = ""
}

variable "metrics_server_helm_values" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "metrics_server_helm_values_files" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "metrics_server_helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "metrics_server_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "metrics_server_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "mpi_operator_deployment_url" {
  description = ""
  type        = string
  default     = ""
}

variable "mpi_operator_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "mpi_operator_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "mpi_operator_version" {
  description = ""
  type        = string
  default     = ""
}

variable "multus_daemonset_url" {
  description = ""
  type        = string
  default     = ""
}

variable "multus_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "multus_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "multus_version" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_host" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_user" {
  description = ""
  type        = string
  default     = ""
}

variable "pods_cidr" {
  description = ""
  type        = string
  default     = ""
}

variable "prometheus_helm_values" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "prometheus_helm_values_files" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "prometheus_helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "prometheus_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "prometheus_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "prometheus_reapply" {
  description = ""
  type        = bool
  default     = ""
}

variable "rdma_cni_plugin_daemonset_url" {
  description = ""
  type        = string
  default     = ""
}

variable "rdma_cni_plugin_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "rdma_cni_plugin_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "rdma_cni_plugin_version" {
  description = ""
  type        = string
  default     = ""
}

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "sriov_cni_plugin_daemonset_url" {
  description = ""
  type        = string
  default     = ""
}

variable "sriov_cni_plugin_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "sriov_cni_plugin_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "sriov_cni_plugin_version" {
  description = ""
  type        = string
  default     = ""
}

variable "sriov_device_plugin_daemonset_url" {
  description = ""
  type        = string
  default     = ""
}

variable "sriov_device_plugin_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "sriov_device_plugin_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "sriov_device_plugin_version" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key" {
  description = ""
  type        = string
  default     = ""
}

variable "state_id" {
  description = ""
  type        = string
  default     = ""
}

variable "vcn_cidrs" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "whereabouts_daemonset_url" {
  description = ""
  type        = string
  default     = ""
}

variable "whereabouts_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "whereabouts_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "whereabouts_version" {
  description = ""
  type        = string
  default     = ""
}

variable "worker_pools" {
  description = ""
  type        = any
  default     = ""
}
