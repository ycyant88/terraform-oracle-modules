variable "assign_public_ip_to_control_plane" {
  description = ""
  type        = bool
  default     = ""
}

variable "cluster_defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "cluster_freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "cluster_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_type" {
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

variable "control_plane_is_public" {
  description = ""
  type        = bool
  default     = ""
}

variable "control_plane_nsg_ids" {
  description = ""
  type        = set(string)
  default     = ""
}

variable "control_plane_subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "enable_ipv6" {
  description = ""
  type        = bool
  default     = ""
}

variable "image_signing_keys" {
  description = ""
  type        = set(string)
  default     = ""
}

variable "kubernetes_version" {
  description = ""
  type        = string
  default     = ""
}

variable "oidc_discovery_enabled" {
  description = ""
  type        = bool
  default     = ""
}

variable "oidc_token_auth_enabled" {
  description = ""
  type        = bool
  default     = ""
}

variable "oidc_token_authentication_config" {
  description = ""
  type        = any
  default     = ""
}

variable "persistent_volume_defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "persistent_volume_freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "pods_cidr" {
  description = ""
  type        = string
  default     = ""
}

variable "service_lb_defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "service_lb_freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "service_lb_subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "services_cidr" {
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

variable "use_defined_tags" {
  description = ""
  type        = string
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
