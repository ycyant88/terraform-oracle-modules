variable "compartments" {
  description = "Hierarchical Compartments"
  type        = any
  default     = ""
}

variable "root_compartment_id" {
  description = "Target compartment id which is considered as root"
  type        = string
  default     = ""
}
