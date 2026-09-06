variable "olcne_general" {
  description = ""
  type = object({
    ad_names       = list(string)
    compartment_id = string
    label_prefix   = string
  })
  default = ""
}

variable "olcne_master" {
  description = ""
  type = object({
    master_image_id     = string
    master_shape        = string
    master_upgrade      = bool
    size                = number
    ssh_public_key_path = string
    timezone            = string
  })
  default = ""
}

variable "olcne_master_network" {
  description = ""
  type = object({
    nsg_ids      = map(string)
    subnet_id    = string
    subnet_label = string
    subnet_mask  = string
  })
  default = ""
}
