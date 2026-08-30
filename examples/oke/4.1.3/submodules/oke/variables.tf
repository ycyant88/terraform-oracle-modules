variable "admission_controller_options" {
  description = ""
  type        = map(any)
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

variable "control_plane_nsgs" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "control_plane_type" {
  description = ""
  type        = string
  default     = ""
}

variable "enable_pv_encryption_in_transit" {
  description = ""
  type        = bool
  default     = ""
}

variable "image_signing_keys" {
  description = ""
  type        = list(string)
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

variable "node_pool_volume_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "node_pools" {
  description = ""
  type        = any
  default     = ""
}

variable "preferred_load_balancer" {
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

variable "vcn_id" {
  description = ""
  type        = string
  default     = ""
}

variable "worker_nsgs" {
  description = ""
  type        = list(any)
  default     = ""
}
