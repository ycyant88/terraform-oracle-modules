variable "oci_base_vcn" {
  description = "vcn basic parameters"
  type = object({
    compartment_id          = string
    label_prefix            = string
    nat_gateway_enabled     = bool
    service_gateway_enabled = bool
    vcn_cidr                = string
    vcn_dns_label           = string
    vcn_name                = string
  })
  default = ""
}

variable "tagging" {
  description = ""
  type = object({
    computetag = map(any)
    networktag = map(any)
  })
  default = ""
}
