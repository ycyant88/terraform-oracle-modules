variable "assign_dns" {
  description = "Whether to assign DNS records to created instances"
  type        = bool
  default     = true
}

variable "availability_domain" {
  description = "the AD to place the bastion host"
  type        = number
  default     = 1
}

variable "bastion_access" {
  description = "A list of CIDR blocks to which ssh access to the bastion must be restricted to. *anywhere* is equivalent to 0.0.0.0/0 and allows ssh access from anywhere."
  type        = list(any)
  default     = ["anywhere"]
}

variable "bastion_image_id" {
  description = "Provide a custom image id for the bastion host or leave as Autonomous."
  type        = string
  default     = "Autonomous"
}

variable "bastion_notification_endpoint" {
  description = "The subscription notification endpoint. Email address to be notified."
  type        = string
  default     = null
}

variable "bastion_notification_protocol" {
  description = "The notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "bastion_notification_topic" {
  description = "The name of the notification topic"
  type        = string
  default     = "bastion"
}

variable "bastion_os_version" {
  description = "In case Autonomous Linux is used, allow specification of Autonomous version"
  type        = string
  default     = "7.9"
}

variable "bastion_shape" {
  description = "The shape of bastion instance."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }
}

variable "bastion_state" {
  description = "The target state for the instance. Could be set to RUNNING or STOPPED. (Updatable)"
  type        = string
  default     = "RUNNING"
}

variable "bastion_timezone" {
  description = "The preferred timezone for the bastion host."
  type        = string
  default     = "Australia/Sydney"
}

variable "bastion_type" {
  description = "Whether to make the bastion host public or private."
  type        = string
  default     = "public"
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "enable_bastion_notification" {
  description = "Whether to enable ONS notification for the bastion host."
  type        = bool
  default     = false
}

variable "freeform_tags" {
  description = "Freeform tags for bastion"
  type        = map(any)
  default     = { "access" : "public", "environment" : "dev", "role" : "bastion" }
}

variable "ig_route_id" {
  description = "the route id to the internet gateway"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "none"
}

variable "netnum" {
  description = "0-based index of the bastion subnet when the VCN's CIDR is masked with the corresponding newbit value."
  type        = number
  default     = 0
}

variable "newbits" {
  description = "The difference between the VCN's netmask and the desired bastion subnet mask"
  type        = number
  default     = 14
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

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

variable "upgrade_bastion" {
  description = "Whether to upgrade the bastion host packages after provisioning. It's useful to set this to false during development/testing so the bastion is provisioned faster."
  type        = bool
  default     = false
}

variable "vcn_id" {
  description = "The id of the VCN to use when creating the bastion resources."
  type        = string
  default     = ""
}
