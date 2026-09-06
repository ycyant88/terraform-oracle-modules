variable "api_fingerprint" {
  description = "fingerprint of oci api private key"
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = "path to oci api private key used"
  type        = string
  default     = ""
}

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

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = ""
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

variable "notification_enabled" {
  description = "Whether to enable ONS notification for the operator host."
  type        = bool
  default     = false
}

variable "notification_endpoint" {
  description = "The subscription notification endpoint. Email address to be notified."
  type        = string
  default     = ""
}

variable "notification_protocol" {
  description = "The notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "notification_topic" {
  description = "The name of the notification topic"
  type        = string
  default     = "operator"
}

variable "operator_enabled" {
  description = "whether to create the operator"
  type        = bool
  default     = false
}

variable "operator_image_id" {
  description = "Provide a custom image id for the operator host or leave as Autonomous."
  type        = string
  default     = "Oracle"
}

variable "operator_instance_principal" {
  description = "whether to enable instance_principal on the operator"
  type        = bool
  default     = false
}

variable "operator_shape" {
  description = "The shape of operator instance."
  type        = string
  default     = "VM.Standard.E2.2"
}

variable "operator_upgrade" {
  description = "Whether to upgrade the operator host packages after provisioning. It's useful to set this to false during development/testing so the operator is provisioned faster."
  type        = bool
  default     = false
}

variable "region" {
  description = "the oci region where resources will be created"
  type        = string
  default     = ""
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
  default     = { "compute" : { "environment" : "dev", "role" : "operator" }, "network" : { "environment" : "dev", "role" : "operator" } }
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

variable "timezone" {
  description = "The preferred timezone for the operator host."
  type        = string
  default     = "Australia/Sydney"
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
  default     = ""
}

variable "vcn_id" {
  description = "The id of the VCN to use when creating the operator resources."
  type        = string
  default     = ""
}
