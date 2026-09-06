variable "ocir" {
  description = ""
  type = object({
    api_fingerprint      = string
    api_private_key_path = string
    compartment_ocid     = string
    create_auth_token    = bool
    home_region          = string
    tenancy_ocid         = string
    user_ocid            = string
  })
  default = ""
}
