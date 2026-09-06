variable "autoscaler_compartments" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "cluster_id" {
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

variable "create_iam_autoscaler_policy" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_iam_defined_tags" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_iam_kms_policy" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_iam_operator_policy" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_iam_resources" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_iam_tag_namespace" {
  description = ""
  type        = bool
  default     = ""
}

variable "create_iam_worker_policy" {
  description = ""
  type        = bool
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

variable "operator_volume_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}

variable "policy_name" {
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

variable "use_defined_tags" {
  description = ""
  type        = bool
  default     = ""
}

variable "worker_compartments" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "worker_volume_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}
