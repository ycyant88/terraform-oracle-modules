variable "assign_dns" {
  description = ""
  type        = bool
  default     = ""
}

variable "availability_domain" {
  description = ""
  type        = string
  default     = ""
}

variable "await_cloudinit" {
  description = ""
  type        = string
  default     = ""
}

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

variable "cloud_init" {
  description = ""
  type        = list(map(string))
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "image_id" {
  description = ""
  type        = string
  default     = ""
}

variable "install_cilium" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_helm" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_helm_from_repo" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_istioctl" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_k8sgpt" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_k9s" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_kubectl_from_repo" {
  description = ""
  type        = bool
  default     = true
}

variable "install_kubectx" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_oci_cli_from_repo" {
  description = ""
  type        = bool
  default     = ""
}

variable "install_stern" {
  description = ""
  type        = bool
  default     = ""
}

variable "kubeconfig" {
  description = ""
  type        = string
  default     = ""
}

variable "kubernetes_version" {
  description = ""
  type        = string
  default     = ""
}

variable "legacy_imds_endpoints_disabled" {
  description = ""
  type        = bool
  default     = true
}

variable "nsg_ids" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "operator_image_os_version" {
  description = ""
  type        = string
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

variable "ssh_private_key" {
  description = ""
  type        = string
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

variable "subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "tag_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "timezone" {
  description = ""
  type        = string
  default     = ""
}

variable "upgrade" {
  description = ""
  type        = bool
  default     = ""
}

variable "use_defined_tags" {
  description = ""
  type        = bool
  default     = ""
}

variable "user" {
  description = ""
  type        = string
  default     = ""
}

variable "volume_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}
