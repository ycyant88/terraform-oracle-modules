// This is a placeholder for the s3 remote backend configuration.
// Add your own custom values below.
// https://developer.hashicorp.com/terraform/language/backend/oci

# terraform {
#   backend "oci" {
#     # Required
#     bucket            = "<mybucket>"
#     namespace         = "<my-namespace>"
#     # Optional
#     tenancy_ocid      = "ocid1.tenancy.oc1..xxxxxxx"
#     user_ocid         = "ocid1.user.oc1..xxxxxxxx"
#     fingerprint       = "xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
#     private_key_path  = "~/.oci/oci_api_key.pem"
#     region            = "ap-singapore-1"
#     key               = "path/to/my/key"
#     workspace_key_prefix = "envs/"
#     kms_key_id        = "ocid1.key.oc1.iad.xxxxxxxxxxxxxx"
#     auth              = "APIKey"
#     config_file_profile = "DEFAULT"
#   }
# }
