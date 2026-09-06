variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "create_rpc" {
  description = "Whether to create Remote Peering Connection. If set to true, creates an RPC"
  type        = bool
  default     = false
}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the created resources using OCI Defined tags."
  type        = map(any)
  default     = null
}

variable "drg_display_name" {
  description = "(Updatable) Name of Dynamic Routing Gateway. Does not have to be unique."
  type        = string
  default     = "drg"
}

variable "drg_id" {
  description = "ID of an external created DRG"
  type        = string
  default     = null
}

variable "drg_vcn_attachments" {
  description = "The OCID of the network resource attached to the DRG"
  type        = map(any)
  default     = null
}

variable "freeform_tags" {
  description = "simple key-value pairs to tag the created resources using freeform OCI Free-form tags."
  type        = map(any)
  default     = { "module" : "oracle-terraform-modules/vcn/oci//modules/drg", "terraformed" : "Please do not edit manually" }
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = "none"
}

variable "region" {
  description = "The OCI region where the DRG will be created."
  type        = string
  default     = ""
}

variable "rpc_acceptor_id" {
  description = "the ID of the remote RPC"
  type        = string
  default     = null
}

variable "rpc_acceptor_region" {
  description = "the OCI region where the Remote Peering Connection will be established with"
  type        = string
  default     = null
}
