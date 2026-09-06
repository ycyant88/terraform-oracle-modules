variable "admission_controller_options" {
  description = ""
  type        = map(any)
  default     = ""
}

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

variable "cluster_kubernetes_version" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
  description = ""
  type        = bool
  default     = ""
}

variable "cluster_options_kubernetes_network_config_pods_cidr" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_options_kubernetes_network_config_services_cidr" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_subnets" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "control_plane_access" {
  description = ""
  type        = string
  default     = ""
}

variable "control_plane_nsgs" {
  description = ""
  type        = list(string)
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

variable "email_address" {
  description = ""
  type        = string
  default     = ""
}

variable "enable_metric_server" {
  description = ""
  type        = bool
  default     = false
}

variable "enable_vpa" {
  description = ""
  type        = bool
  default     = ""
}

variable "image_signing_keys" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "install_calico" {
  description = ""
  type        = bool
  default     = ""
}

variable "kms_key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_image_id" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_name_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_os" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_os_version" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pools" {
  description = ""
  type        = any
  default     = ""
}

variable "node_pools_to_drain" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "nodepool_drain" {
  description = ""
  type        = bool
  default     = ""
}

variable "nodepool_upgrade_method" {
  description = ""
  type        = string
  default     = ""
}

variable "ocir_urls" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "operator_instance_principal" {
  description = ""
  type        = bool
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

variable "preferred_lb_type" {
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

variable "use_encryption" {
  description = ""
  type        = bool
  default     = ""
}

variable "use_signed_images" {
  description = ""
  type        = bool
  default     = ""
}

variable "username" {
  description = ""
  type        = string
  default     = ""
}

variable "vcn_id" {
  description = ""
  type        = string
  default     = ""
}

variable "vpa_version" {
  description = ""
  type        = string
  default     = ""
}
