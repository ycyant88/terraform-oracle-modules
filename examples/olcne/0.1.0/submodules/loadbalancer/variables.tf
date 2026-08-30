variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "int_lb_shape" {
  description = ""
  type        = string
  default     = ""
}

variable "int_lb_subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = ""
}

variable "nsg_ids" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "olcne_workers" {
  description = ""
  type        = list(any)
  default     = ""
}

variable "pub_lb_shape" {
  description = ""
  type        = string
  default     = ""
}

variable "pub_lb_subnet_id" {
  description = ""
  type        = string
  default     = ""
}
