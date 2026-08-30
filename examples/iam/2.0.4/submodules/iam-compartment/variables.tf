variable "compartment_create" {
  description = "(Deprecated) Create the compartment or not. If true, the compartment will be managed by this module, and the user must have permissions to create the compartment; If false, compartment data will be returned about the compartment if it exists, if not found, then an empty string will be returned for the compartment ID."
  type        = bool
  default     = true
}

variable "compartment_description" {
  description = "The description you assign to the compartment. Does not have to be unique, and it's changeable. "
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "The OCID of the parent compartment containing the compartment. Allow for sub-compartments creation"
  type        = string
  default     = null
}

variable "compartment_name" {
  description = "The name you assign to the compartment during creation. The name must be unique across all compartments in the tenancy. "
  type        = string
  default     = null
}

variable "enable_delete" {
  description = "Enable compartment delete on destroy. If true, compartment will be deleted when terraform destroy is executed; If false, compartment will not be deleted on terraform destroy execution"
  type        = bool
  default     = false
}

variable "tenancy_ocid" {
  description = "(Deprecated) The OCID of the tenancy."
  type        = string
  default     = null
}
