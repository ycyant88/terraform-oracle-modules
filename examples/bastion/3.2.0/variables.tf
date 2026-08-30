variable "assign_dns" {
  description = "Whether to assign DNS records to created instances"
  type        = bool
  default     = true
}

variable "bastion_allowed_cidrs" {
  description = "A list of CIDR blocks to which ssh access to the bastion must be restricted to. *anywhere* is equivalent to 0.0.0.0/0 and allows ssh access from anywhere."
  type        = list(string)
  default     = ["anywhere"]
}

variable "bastion_availability_domain" {
  description = "the AD to place the bastion host"
  type        = number
  default     = 1
}

variable "bastion_await_cloudinit" {
  description = "Whether to block until successful SSH connection to the bastion and completion of cloud-init. This wait path is only attempted for public bastions."
  type        = bool
  default     = true
}

variable "bastion_image_id" {
  description = "Custom image OCID for the bastion host when bastion_image_type is set to custom."
  type        = string
  default     = null
}

variable "bastion_image_os" {
  description = "Bastion image operating system name when bastion_image_type = 'platform'."
  type        = string
  default     = "Oracle Autonomous Linux"
}

variable "bastion_image_os_version" {
  description = "Operating system version when bastion_image_type is set to platform."
  type        = string
  default     = "9"
}

variable "bastion_image_type" {
  description = "Whether to use a platform or custom image for the created bastion instance. When custom is set, the bastion_image_id must be specified."
  type        = string
  default     = "platform"
}

variable "bastion_is_public" {
  description = "Whether to make the bastion host public or private."
  type        = bool
  default     = true
}

variable "bastion_nsg_ids" {
  description = "An additional list of network security group (NSG) IDs for bastion security."
  type        = list(string)
  default     = []
}

variable "bastion_route_table_id" {
  description = "Route table ID to associate with the bastion subnet. Required when bastion_is_public is false."
  type        = string
  default     = null
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

variable "bastion_user" {
  description = "User for SSH access through bastion host."
  type        = string
  default     = "opc"
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "freeform_tags" {
  description = "Freeform tags for bastion"
  type        = map(string)
  default     = { "access" : "public", "environment" : "dev", "role" : "bastion" }
}

variable "ig_route_id" {
  description = "the route id to the internet gateway"
  type        = string
  default     = null
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

variable "ssh_private_key" {
  description = "Private key content used only when waiting for cloud-init over SSH on a public bastion."
  type        = string
  default     = null
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
