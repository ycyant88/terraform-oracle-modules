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

variable "calico_apiserver_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "calico_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "calico_mode" {
  description = ""
  type        = string
  default     = ""
}

variable "calico_mtu" {
  description = ""
  type        = number
  default     = ""
}

variable "calico_staging_dir" {
  description = ""
  type        = string
  default     = ""
}

variable "calico_typha_install" {
  description = ""
  type        = bool
  default     = ""
}

variable "calico_typha_replicas" {
  description = ""
  type        = number
  default     = ""
}

variable "calico_url" {
  description = ""
  type        = string
  default     = ""
}

variable "calico_version" {
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

variable "region" {
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

variable "worker_pools" {
  description = ""
  type        = any
  default     = ""
}
