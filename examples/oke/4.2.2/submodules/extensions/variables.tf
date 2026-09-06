variable "bastion_public_ip" {
  description = ""
  type        = string
  default     = ""
}

variable "bastion_state" {
  description = ""
  type        = string
  default     = ""
}

variable "calico_version" {
  description = ""
  type        = string
  default     = ""
}

variable "check_node_active" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_id" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_kms_dynamic_group_id" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "create_bastion_host" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_operator" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_service_account" {
  description = ""
  type        = bool
  default     = ""
}

variable "debug_mode" {
  description = ""
  type        = bool
  default     = ""
}

variable "email_address" {
  description = ""
  type        = string
  default     = ""
}

variable "enable_gatekeeper" {
  description = ""
  type        = bool
  default     = false
}

variable "enable_metric_server" {
  description = ""
  type        = bool
  default     = false
}

variable "enable_operator_instance_principal" {
  description = ""
  type        = bool
  default     = ""
}

variable "enable_vpa" {
  description = ""
  type        = bool
  default     = ""
}

variable "gatekeeeper_version" {
  description = ""
  type        = string
  default     = ""
}

variable "install_calico" {
  description = ""
  type        = bool
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pools_to_drain" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "nodepool_upgrade_method" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_dynamic_group" {
  description = "name of dynamic group to allow updating dynamic-groups"
  type        = string
  default     = ""
}

variable "operator_os_version" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_private_ip" {
  description = ""
  type        = string
  default     = ""
}

variable "operator_state" {
  description = ""
  type        = string
  default     = ""
}

variable "pods_cidr" {
  description = ""
  type        = string
  default     = ""
}

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "secret_id" {
  description = ""
  type        = string
  default     = ""
}

variable "secret_name" {
  description = ""
  type        = string
  default     = ""
}

variable "secret_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "service_account_cluster_role_binding" {
  description = ""
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = ""
  type        = string
  default     = ""
}

variable "service_account_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_public_key" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "tenancy_id" {
  description = ""
  type        = string
  default     = ""
}

variable "upgrade_nodepool" {
  description = ""
  type        = bool
  default     = ""
}

variable "use_cluster_encryption" {
  description = ""
  type        = bool
  default     = ""
}

variable "username" {
  description = ""
  type        = string
  default     = ""
}

variable "vpa_version" {
  description = ""
  type        = string
  default     = ""
}
