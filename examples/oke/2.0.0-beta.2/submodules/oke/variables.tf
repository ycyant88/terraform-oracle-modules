variable "calico" {
  description = ""
  type = object({
    calico_version = string
    install_calico = bool
  })
  default = ""
}

variable "cluster_kube_config_expiration" {
  description = ""
  type        = string
  default     = 2592000
}

variable "cluster_kube_config_token_version" {
  description = ""
  type        = string
  default     = "2.0.0"
}

variable "helm" {
  description = ""
  type = object({
    helm_version = string
    install_helm = bool
  })
  default = ""
}

variable "install_metricserver" {
  description = ""
  type        = string
  default     = false
}

variable "lbs" {
  description = ""
  type = object({
    preferred_lb_subnets = string
  })
  default = ""
}

variable "node_pools" {
  description = ""
  type = object({
    node_pools            = map(any)
    node_pool_name_prefix = string
    node_pool_image_id    = string
    node_pool_os          = string
    node_pool_os_version  = string
  })
  default = ""
}

variable "oke_admin" {
  description = ""
  type = object({
    bastion_public_ip        = string
    admin_private_ip         = string
    bastion_enabled          = bool
    admin_enabled            = bool
    admin_instance_principal = bool
  })
  default = ""
}

variable "oke_cluster" {
  description = ""
  type = object({
    cluster_kubernetes_version                              = string
    cluster_name                                            = string
    cluster_options_add_ons_is_kubernetes_dashboard_enabled = bool
    cluster_options_kubernetes_network_config_pods_cidr     = string
    cluster_options_kubernetes_network_config_services_cidr = string
    cluster_subnets                                         = map(string)
    vcn_id                                                  = string

    # encryption
    use_encryption = bool
    kms_key_id     = string
  })
  default = ""
}

variable "oke_general" {
  description = ""
  type = object({
    ad_names     = list(string)
    label_prefix = string
    region       = string
  })
  default = ""
}

variable "oke_identity" {
  description = ""
  type = object({
    compartment_id = string
    user_id        = string
  })
  default = ""
}

variable "oke_ocir" {
  description = ""
  type = object({
    auth_token        = string
    create_auth_token = bool
    email_address     = string
    ocirtoken_id      = string
    ocir_urls         = map(string)
    tenancy_name      = string
    username          = string
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
