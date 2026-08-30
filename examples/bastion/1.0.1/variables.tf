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
  description = "the AD to place the bastion host"
  type        = number
  default     = 1
}

variable "bastion_access" {
  description = "CIDR block in the form of a string to which ssh access to the bastion must be restricted to. *_ANYWHERE_* is equivalent to 0.0.0.0/0 and allows ssh access from anywhere."
  type        = string
  default     = "ANYWHERE"
}

variable "bastion_enabled" {
  description = "whether to create the bastion"
  type        = bool
  default     = false
}

variable "bastion_image_id" {
  description = "Provide a custom image id for the bastion host or leave as Autonomous."
  type        = string
  default     = "Autonomous"
}

variable "bastion_shape" {
  description = "The shape of bastion instance."
  type        = string
  default     = "VM.Standard.E2.2"
}

variable "bastion_upgrade" {
  description = "Whether to upgrade the bastion host packages after provisioning. It's useful to set this to false during development/testing so the bastion is provisioned faster."
  type        = bool
  default     = false
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "ig_route_id" {
  description = "the route id to the internet gateway"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = ""
}

variable "netnum" {
  description = "0-based index of the bastion subnet when the VCN's CIDR is masked with the corresponding newbit value."
  type        = number
  default     = 32
}

variable "newbits" {
  description = "The difference between the VCN's netmask and the desired bastion subnet mask"
  type        = number
  default     = 13
}

variable "notification_enabled" {
  description = "Whether to enable ONS notification for the bastion host."
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
  default     = "bastion"
}

variable "region" {
  description = "the oci region where resources will be created"
  type        = string
  default     = ""
}

variable "ssh_public_key" {
  description = "the content of the ssh public key used to access the bastion. set this or the ssh_public_key_path"
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = "path to the ssh public key used to access the bastion. set this or the ssh_public_key"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Freeform tags for bastion"
  type        = map(any)
  default     = { "department" : "finance", "environment" : "dev", "role" : "bastion" }
}

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

variable "timezone" {
  description = "The preferred timezone for the bastion host."
  type        = string
  default     = "Australia/Sydney"
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
  default     = ""
}

variable "vcn_id" {
  description = "The id of the VCN to use when creating the bastion resources."
  type        = string
  default     = ""
}
