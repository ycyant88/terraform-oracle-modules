variable "tenancy_ocid" {
  description = "The OCID of the tenancy."
  type        = string
  default     = null
}

variable "users" {
  description = "The name and description you assign to the user during creation. The name must be unique across all compartments in the tenancy. "
  type = list(object({
    name        = string
    description = string
    email       = string
  }))
  default = null
}
