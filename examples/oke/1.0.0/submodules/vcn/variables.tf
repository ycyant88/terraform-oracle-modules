variable "oci_base_vcn" {
  description = ""
  type = object({
    compartment_id         = string
    label_prefix           = string
    create_nat_gateway     = bool
    nat_gateway_name       = string
    create_service_gateway = bool
    service_gateway_name   = string
    vcn_cidr               = string
    vcn_dns_label          = string
    vcn_name               = string
  })
  default = ""
}
