variable "assign_public_ip" {
  description = "Whether the VNIC should be assigned a public IP address. "
  type        = string
  default     = false
}

variable "attachment_type" {
  description = "Attachment type. "
  type        = string
  default     = "iscsi"
}

variable "block_storage_sizes_in_gbs" {
  description = "Sizes of volumes to create and attach to each instance. "
  type        = list(any)
  default     = []
}

variable "boot_volume_size_in_gbs" {
  description = "The size of the boot volume in GBs. "
  type        = string
  default     = "50"
}

variable "compartment_ocid" {
  description = "Compartment's OCID where VCN will be created. "
  type        = string
  default     = ""
}

variable "extended_metadata" {
  description = "Additional metadata key/value pairs that you provide. "
  type        = map(any)
  default     = {}
}

variable "hostname_label" {
  description = "The hostname for the VNIC's primary private IP. "
  type        = string
  default     = ""
}

variable "instance_count" {
  description = "Number of instances to launch. "
  type        = string
  default     = "1"
}

variable "instance_display_name" {
  description = "Name of Instance. "
  type        = string
  default     = ""
}

variable "instance_timeout" {
  description = "Timeout setting for creating instance. "
  type        = string
  default     = "25m"
}

variable "ipxe_script" {
  description = "The iPXE script which to continue the boot process on the instance. "
  type        = string
  default     = ""
}

variable "preserve_boot_volume" {
  description = "Specifies whether to delete or preserve the boot volume when terminating an instance. "
  type        = string
  default     = false
}

variable "private_ips" {
  description = "Private IP addresses of your choice to assign to the VNICs. "
  type        = list(any)
  default     = []
}

variable "resource_platform" {
  description = "Platform to create resources in. "
  type        = string
  default     = "linux"
}

variable "shape" {
  description = "The shape of an instance. "
  type        = string
  default     = "VM.Standard2.1"
}

variable "skip_source_dest_check" {
  description = "Whether the source/destination check is disabled on the VNIC. "
  type        = string
  default     = false
}

variable "source_ocid" {
  description = "The OCID of an image or a boot volume to use, depending on the value of source_type. "
  type        = string
  default     = ""
}

variable "source_type" {
  description = "The source type for the instance. "
  type        = string
  default     = "image"
}

variable "ssh_authorized_keys" {
  description = "Public SSH keys path to be included in the ~/.ssh/authorized_keys file for the default user on the instance. "
  type        = string
  default     = ""
}

variable "subnet_ocids" {
  description = "The unique identifiers (OCIDs) of the subnets in which the instance primary VNICs are created. "
  type        = list(any)
  default     = ""
}

variable "use_chap" {
  description = "Whether to use CHAP authentication for the volume attachment. "
  type        = string
  default     = false
}

variable "user_data" {
  description = "Provide your own base64-encoded data to be used by Cloud-Init to run custom scripts or provide custom Cloud-Init configuration. "
  type        = string
  default     = ""
}

variable "vnic_name" {
  description = "A user-friendly name for the VNIC. "
  type        = string
  default     = ""
}
