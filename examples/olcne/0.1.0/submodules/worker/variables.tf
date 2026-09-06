variable "oci_loadbalancer_id" {
  description = ""
  type        = string
  default     = ""
}

variable "olcne_general" {
  description = ""
  type = object({
    ad_names       = list(string)
    compartment_id = string
    label_prefix   = string
  })
  default = ""
}

variable "olcne_worker" {
  description = ""
  type = object({
    worker_image_id     = string
    worker_shape        = string
    worker_upgrade      = bool
    size                = number
    ssh_public_key_path = string
    timezone            = string
  })
  default = ""
}

variable "olcne_worker_network" {
  description = ""
  type = object({
    nsg_ids      = map(string)
    subnet_id    = string
    subnet_label = string
  })
  default = ""
}
