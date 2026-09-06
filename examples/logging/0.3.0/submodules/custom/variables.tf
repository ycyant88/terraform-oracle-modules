variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = "A string that will be prepended to log resources."
  type        = string
  default     = "none"
}

variable "linux_logdef" {
  description = "Custom Linux log definition"
  type        = map(any)
  default     = ""
}

variable "linuxloggroup" {
  description = "Custom Linux loggroup"
  type        = string
  default     = ""
}

variable "log_retention_duration" {
  description = "Log retention duration"
  type        = string
  default     = ""
}

variable "tenancy_id" {
  description = "Tenancy OCID"
  type        = string
  default     = ""
}

variable "windows_logdef" {
  description = "Custom Windows Log Definition"
  type        = map(any)
  default     = ""
}

variable "winloggroup" {
  description = "Custom Windows loggroup"
  type        = string
  default     = ""
}
