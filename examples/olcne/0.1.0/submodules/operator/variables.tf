variable "container_registry_urls" {
  description = "urls of container-registries"
  type        = map(string)
  default     = { "ap-melbourne-1" : "container-registry-mel.oracle.com", "ap-mumbai-1" : "container-registry-bom.oracle.com", "ap-osaka-1" : "container-registry-kix.oracle.com", "ap-seoul-1" : "container-registry-icn.oracle.com", "ap-sydney-1" : "container-registry-syd.oracle.com", "ap-tokyo-1" : "container-registry-nrt.oracle.com", "ca-montreal-1" : "container-registry-yul.oracle.com", "ca-toronto-1" : "container-registry-yyz.oracle.com", "eu-amsterdam-1" : "container-registry-ams.oracle.com", "eu-frankfurt-1" : "container-registry-fra.oracle.com", "eu-zurich-1" : "container-registry-zrh.oracle.com", "me-jeddah-1" : "container-registry-jed.oracle.com", "sa-saopaulo-1" : "container-registry-gru.oracle.com", "uk-london-1" : "container-registry-lhr.oracle.com", "us-ashburn-1" : "container-registry-iad.oracle.com", "us-phoenix-1" : "container-registry-phx.oracle.com" }
}

variable "helm_version" {
  description = ""
  type        = string
  default     = ""
}

variable "loadbalancer_ip_address" {
  description = ""
  type        = string
  default     = ""
}

variable "oci_provider" {
  description = ""
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    home_region          = string
    region               = string
    tenancy_id           = string
    user_id              = string
  })
  default = ""
}

variable "olcne_bastion" {
  description = ""
  type = object({
    bastion_public_ip    = string
    ssh_private_key_path = string
  })
  default = ""
}

variable "olcne_certificate" {
  description = ""
  type = object({
    org_unit    = string
    org         = string
    city        = string
    state       = string
    country     = string
    common_name = string
  })
  default = ""
}

variable "olcne_environment" {
  description = ""
  type = object({
    environment_name        = string
    cluster_name            = string
    create_kata_runtime     = bool
    kata_runtime_class_name = string
  })
  default = ""
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

variable "olcne_masters" {
  description = ""
  type = object({
    master_nodes_size  = number
    olcne_master_nodes = list(any)
    primary_master_vip = string
  })
  default = ""
}

variable "olcne_operator" {
  description = ""
  type = object({
    operator_image_id    = string
    operator_shape       = string
    operator_upgrade     = bool
    ssh_private_key_path = string
    ssh_public_key_path  = string
    timezone             = string
  })
  default = ""
}

variable "olcne_operator_network" {
  description = ""
  type = object({
    nsg_ids      = map(string)
    subnet_id    = string
    subnet_label = string
  })
  default = ""
}

variable "olcne_workers" {
  description = ""
  type = object({
    olcne_worker_nodes = list(any)
    worker_nodes_size  = number
  })
  default = ""
}

variable "secret_id" {
  description = ""
  type        = string
  default     = ""
}
