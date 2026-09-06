variable "compartment_id" {
  description = "compartment id where to create the resources"
  type        = string
  default     = ""
}

variable "linux_logdef" {
  description = "Custom Linux Operating System Log Definition"
  type        = map(any)
  default     = {}
}

variable "log_retention_duration" {
  description = "Log retention duration"
  type        = number
  default     = 30
}

variable "loggroup_tags" {
  description = "Freeform Tags"
  type        = map(any)
  default     = { "Environment" : "Dev" }
}

variable "service_logdef" {
  description = "OCI Service log definition"
  type        = map(any)
  default     = {}
}

variable "tenancy_id" {
  description = "Tenancy OCID"
  type        = string
  default     = ""
}

variable "vcn_id" {
  description = "VCN OCID"
  type        = string
  default     = "none"
}

variable "windows_logdef" {
  description = "Custom Windows Operating System Log Definition"
  type        = map(any)
  default     = {}
}
