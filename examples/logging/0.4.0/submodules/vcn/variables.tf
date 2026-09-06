variable "compartment_id" {
  description = "Compartment ID where the resources will be created"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = "A string that will be prepended to log resources."
  type        = string
  default     = "none"
}

variable "log_retention_duration" {
  description = "Duration to retain logs"
  type        = string
  default     = ""
}

variable "logdefinition" {
  description = "Log definition"
  type        = map(any)
  default     = ""
}

variable "loggroup" {
  description = "Log Group"
  type        = map(any)
  default     = ""
}

variable "vcn_id" {
  description = "VCN OCID"
  type        = string
  default     = ""
}
