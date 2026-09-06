variable "group_create" {
  description = "(Deprecated) Create the group or not. If true, the user must have permissions to create the group; If false, group data will be returned about the group if it exists, if not found, then an empty string will be returned for the group ID."
  type        = bool
  default     = true
}

variable "group_description" {
  description = "The description you assign to the Group. Does not have to be unique, and it's changeable. "
  type        = string
  default     = null
}

variable "group_name" {
  description = "The name you assign to the group during creation. The name must be unique across all compartments in the tenancy."
  type        = string
  default     = null
}

variable "policy_compartment_id" {
  description = "The compartment id where policy is created."
  type        = string
  default     = null
}

variable "policy_description" {
  description = "The description you assign to the policy. Does not have to be unique, and it's changeable. "
  type        = string
  default     = null
}

variable "policy_name" {
  description = "The name you assign to the policy during creation.  "
  type        = string
  default     = null
}

variable "policy_statements" {
  description = "Define policy consists of one or more policy statements. "
  type        = list(string)
  default     = null
}

variable "tenancy_ocid" {
  description = "The OCID of the tenancy."
  type        = string
  default     = null
}

variable "user_ids" {
  description = "List of user ocids to be added as group member"
  type        = list(string)
  default     = null
}
