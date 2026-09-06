variable "compartment_create" {
  description = "Create the compartment or not. If true, the compartment will be managed by this module, and the user must have permissions to create the compartment; If false, compartment data will be returned about the compartment if it exists, if not found, then an empty string will be returned for the compartment ID."
  type        = string
  default     = true
}

variable "compartment_description" {
  description = "The description you assign to the compartment. Does not have to be unique, and it's changeable. "
  type        = string
  default     = ""
}

variable "compartment_name" {
  description = "The name you assign to the compartment during creation. The name must be unique across all compartments in the tenancy. "
  type        = string
  default     = ""
}

variable "tenancy_ocid" {
  description = "The OCID of the tenancy. "
  type        = string
  default     = ""
}
