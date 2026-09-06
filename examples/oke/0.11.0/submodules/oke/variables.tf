variable "ad_names" {
  description = ""
  type        = list(any)
  default     = ""
}

variable "auth_token" {
  description = ""
  type        = string
  default     = ""
}

variable "availability_domains" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "bastion_public_ip" {
  description = ""
  type        = string
  default     = ""
}

variable "calico_version" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_kube_config_expiration" {
  description = ""
  type        = string
  default     = 2592000
}

variable "cluster_kube_config_token_version" {
  description = ""
  type        = string
  default     = "1.0.0"
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
  type        = string
  default     = ""
}

variable "cluster_options_add_ons_is_tiller_enabled" {
  description = ""
  type        = string
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

variable "compartment_ocid" {
  description = ""
  type        = string
  default     = ""
}

variable "create_auth_token" {
  description = ""
  type        = string
  default     = ""
}

variable "create_bastion" {
  description = ""
  type        = string
  default     = ""
}

variable "email_address" {
  description = ""
  type        = string
  default     = ""
}

variable "enable_instance_principal" {
  description = ""
  type        = string
  default     = ""
}

variable "helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "image_operating_system" {
  description = ""
  type        = string
  default     = ""
}

variable "install_calico" {
  description = ""
  type        = string
  default     = false
}

variable "install_helm" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_name_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_node_image_name" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_node_shape" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pool_quantity_per_subnet" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pools" {
  description = ""
  type        = string
  default     = ""
}

variable "nodepool_topology" {
  description = ""
  type        = string
  default     = ""
}

variable "ocir_urls" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "ocirtoken_id" {
  description = ""
  type        = string
  default     = ""
}

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_private_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = ""
  type        = string
  default     = ""
}

variable "tenancy_name" {
  description = ""
  type        = string
  default     = ""
}

variable "tenancy_ocid" {
  description = ""
  type        = string
  default     = ""
}

variable "user_ocid" {
  description = ""
  type        = string
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
