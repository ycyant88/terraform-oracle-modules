variable "tenancy_ocid" {
  description = "The OCID of the tenancy. "
  type        = string
  default     = ""
}

variable "user_create" {
  description = "Create the user or not. If true, the user must have permissions to create the user; If false, user data will be returned about the user if it exists, if not found, then an empty string will be returned for the user ID."
  type        = string
  default     = true
}

variable "user_description" {
  description = "The description you assign to the user. Does not have to be unique, and it's changeable. "
  type        = string
  default     = ""
}

variable "user_name" {
  description = "The name you assign to the user during creation. The name must be unique across all compartments in the tenancy. "
  type        = string
  default     = ""
}
