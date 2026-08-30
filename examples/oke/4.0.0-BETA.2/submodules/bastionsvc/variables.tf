variable "bastion_service_access" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "bastion_service_name" {
  description = ""
  type        = string
  default     = ""
}

variable "bastion_service_target_subnet" {
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

variable "vcn_id" {
  description = ""
  type        = string
  default     = ""
}
