variable "assign_dns" {
  description = ""
  type        = bool
  default     = ""
}

variable "availability_domain" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = ""
  type        = string
  default     = ""
}

variable "defined_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "freeform_tags" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "image_id" {
  description = ""
  type        = string
  default     = ""
}

variable "is_public" {
  description = ""
  type        = bool
  default     = ""
}

variable "nsg_ids" {
  description = ""
  type        = list(string)
  default     = ""
}

variable "shape" {
  description = ""
  type        = map(any)
  default     = ""
}

variable "ssh_private_key" {
  description = ""
  type        = string
  default     = ""
}

variable "ssh_public_key" {
  description = ""
  type        = string
  default     = ""
}

variable "state_id" {
  description = ""
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "tag_namespace" {
  description = ""
  type        = string
  default     = ""
}

variable "timezone" {
  description = ""
  type        = string
  default     = ""
}

variable "upgrade" {
  description = ""
  type        = bool
  default     = ""
}

variable "use_defined_tags" {
  description = ""
  type        = bool
  default     = ""
}

variable "user" {
  description = ""
  type        = string
  default     = ""
}
