variable "ad_numbers" {
  description = ""
  type        = list(number)
  default     = ""
}

variable "ad_numbers_to_names" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "apiserver_private_host" {
  description = ""
  type        = string
  default     = ""
}

variable "assign_dns" {
  description = ""
  type        = bool
  default     = ""
}

variable "assign_public_ip" {
  description = ""
  type        = bool
  default     = ""
}

variable "block_volume_type" {
  description = ""
  type        = string
  default     = ""
}

variable "cloud_init" {
  description = ""
  type        = list(map(string))
  default     = ""
}

variable "cluster_ca_cert" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_dns" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_id" {
  description = ""
  type        = string
  default     = ""
}

variable "cni_type" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "create_fss" {
  description = ""
  type        = bool
  default     = ""
}

variable "defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "disable_default_cloud_init" {
  description = ""
  type        = bool
  default     = ""
}

variable "freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "fss_availability_domain" {
  description = ""
  type        = string
  default     = ""
}

variable "fss_max_fs_stat_bytes" {
  description = ""
  type        = string
  default     = ""
}

variable "fss_max_fs_stat_files" {
  description = ""
  type        = string
  default     = ""
}

variable "fss_mount_path" {
  description = ""
  type        = string
  default     = ""
}

variable "fss_nsg_ids" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "fss_subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "image_id" {
  description = ""
  type        = string
  default     = ""
}

variable "image_ids" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "image_os" {
  description = ""
  type        = string
  default     = ""
}

variable "image_os_version" {
  description = ""
  type        = string
  default     = ""
}

variable "image_type" {
  description = ""
  type        = string
  default     = ""
}

variable "kubeproxy_mode" {
  description = ""
  type        = string
  default     = ""
}

variable "kubernetes_version" {
  description = ""
  type        = string
  default     = ""
}

variable "max_pods_per_node" {
  description = ""
  type        = number
  default     = ""
}

variable "node_labels" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "node_metadata" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "platform_config" {
  description = ""
  type = object({
    type                                           = string,
    are_virtual_instructions_enabled               = optional(bool),
    is_access_control_service_enabled              = optional(bool),
    is_input_output_memory_management_unit_enabled = optional(bool),
    is_measured_boot_enabled                       = optional(bool),
    is_memory_encryption_enabled                   = optional(bool),
    is_secure_boot_enabled                         = optional(bool),
    is_symmetric_multi_threading_enabled           = optional(bool),
    is_trusted_platform_module_enabled             = optional(bool),
    numa_nodes_per_socket                          = optional(number),
    percentage_of_cores_enabled                    = optional(bool),
  })
  default = null
}

variable "pod_nsg_ids" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "pod_subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "preemptible_config" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "pv_transit_encryption" {
  description = ""
  type        = bool
  default     = ""
}

variable "shape" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "ssh_public_key" {
  description = ""
  type        = string
  default     = ""
}

variable "state_id" {
  description = ""
  type        = string
  default     = ""
}

variable "tag_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "tenancy_id" {
  description = ""
  type        = string
  default     = ""
}

variable "timezone" {
  description = ""
  type        = string
  default     = ""
}

variable "use_defined_tags" {
  description = ""
  type        = bool
  default     = ""
}

variable "volume_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "worker_nsg_ids" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "worker_pool_mode" {
  description = ""
  type        = string
  default     = ""
}

variable "worker_pool_size" {
  description = ""
  type        = number
  default     = ""
}

variable "worker_pools" {
  description = ""
  type        = any
  default     = ""
}

variable "worker_subnet_id" {
  description = ""
  type        = string
  default     = ""
}
