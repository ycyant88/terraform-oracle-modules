variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "defined_tags" {
  description = "predefined and scoped to a namespace to tag the created resources using OCI Defined tags."
  type        = map(any)
  default     = ""
}

variable "drg_display_name" {
  description = "(Updatable) Name of Dynamic Routing Gateway. Does not have to be unique."
  type        = string
  default     = "drg"
}

variable "drg_vcn_attachments" {
  description = "The OCID of the network resource attached to the DRG"
  type        = map(any)
  default     = ""
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
  description = "the OCI region where resources will be created"
  type        = string
  default     = ""
}
