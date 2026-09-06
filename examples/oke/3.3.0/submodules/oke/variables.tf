variable "ad_names" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "calico" {
  description = ""
  type = object({
    calico_version = string
    install_calico = bool
  })
  default = ""
}

variable "check_node_active" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "lbs" {
  description = ""
  type = object({
    preferred_lb_subnets = string
  })
  default = ""
}

variable "metricserver_enabled" {
  description = ""
  type        = bool
  default     = false
}

variable "node_pools" {
  description = ""
  type = object({
    node_pools            = any
    node_pool_name_prefix = string
    node_pool_image_id    = string
    node_pool_os          = string
    node_pool_os_version  = string
  })
  default = ""
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

variable "oke_cluster" {
  description = ""
  type = object({
    cluster_kubernetes_version                              = string
    cluster_access                                          = string
    cluster_name                                            = string
    cluster_options_add_ons_is_kubernetes_dashboard_enabled = bool
    cluster_options_kubernetes_network_config_pods_cidr     = string
    cluster_options_kubernetes_network_config_services_cidr = string
    cluster_subnets                                         = map(string)
    vcn_id                                                  = string

    # encryption
    use_encryption = bool
    kms_key_id     = string

    # signed images
    use_signed_images  = bool
    image_signing_keys = list(string)

    # admission controller options
    admission_controller_options = map(bool)
  })
  default = ""
}

variable "oke_ocir" {
  description = ""
  type = object({
    email_address = string
    ocir_urls     = map(string)
    secret_id     = string
    secret_name   = string
    username      = string
  })
  default = ""
}

variable "oke_operator" {
  description = ""
  type = object({
    bastion_public_ip           = string
    operator_private_ip         = string
    bastion_enabled             = bool
    operator_enabled            = bool
    operator_instance_principal = bool
    operator_version            = string
    bastion_state               = string
  })
  default = ""
}

variable "oke_ssh_keys" {
  description = ""
  type = object({
    ssh_private_key_path = string
    ssh_public_key_path  = string
  })
  default = ""
}

variable "region" {
  description = ""
  type        = string
  default     = ""
}

variable "service_account" {
  description = ""
  type = object({
    create_service_account               = bool
    service_account_name                 = string
    service_account_namespace            = string
    service_account_cluster_role_binding = string
  })
  default = ""
}

variable "vpa" {
  description = ""
  type = object({
    enabled = bool
    version = string
  })
  default = ""
}
