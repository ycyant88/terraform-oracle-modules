variable "availability_domain" {
  description = "the AD to place the operator host"
  type        = number
  default     = 1
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "create_operator" {
  description = "whether to create the operator"
  type        = bool
  default     = false
}

variable "enable_operator_notification" {
  description = "Whether to enable ONS notification for the operator host."
  type        = bool
  default     = false
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "none"
}

variable "nat_route_id" {
  description = "the id of the route table to the nat gateway."
  type        = string
  default     = ""
}

variable "netnum" {
  description = "0-based index of the operator subnet when the VCN's CIDR is masked with the corresponding newbit value."
  type        = number
  default     = 33
}

variable "newbits" {
  description = "The difference between the VCN's netmask and the desired operator subnet mask"
  type        = number
  default     = 13
}

variable "nsg_ids" {
  description = "Optional list of network security groups that the operator will be part of"
  type        = list(string)
  default     = []
}

variable "operator_image_id" {
  description = "Provide a custom image id for the operator host or leave as Oracle."
  type        = string
  default     = "Oracle"
}

variable "operator_instance_principal" {
  description = "whether to enable instance_principal on the operator"
  type        = bool
  default     = false
}

variable "operator_notification_endpoint" {
  description = "The subscription notification endpoint. Email address to be notified."
  type        = string
  default     = ""
}

variable "operator_notification_protocol" {
  description = "The notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "operator_notification_topic" {
  description = "The name of the notification topic"
  type        = string
  default     = "operator"
}

variable "operator_os_version" {
  description = "The version of the Oracle Linux to use."
  type        = string
  default     = "8"
}

variable "operator_shape" {
  description = "The shape of the operator instance."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }
}

variable "operator_state" {
  description = "The target state for the instance. Could be set to RUNNING or STOPPED. (Updatable)"
  type        = string
  default     = "RUNNING"
}

variable "operator_timezone" {
  description = "The preferred timezone for the operator host."
  type        = string
  default     = "Australia/Sydney"
}

variable "ssh_public_key" {
  description = "the content of the ssh public key used to access the operator. set this or the ssh_public_key_path"
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = "path to the ssh public key used to access the operator. set this or the ssh_public_key"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Freeform tags for operator"
  type        = map(any)
  default     = { "access" : "restricted", "environment" : "dev", "role" : "operator" }
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

variable "upgrade_operator" {
  description = "Whether to upgrade the operator host packages after provisioning. It's useful to set this to false during development/testing so the operator is provisioned faster."
  type        = bool
  default     = false
}

variable "vcn_id" {
  description = "The id of the VCN to use when creating the operator resources."
  type        = string
  default     = ""
}
