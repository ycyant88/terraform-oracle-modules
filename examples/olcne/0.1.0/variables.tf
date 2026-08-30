variable "admin_enabled" {
  description = "whether to create an admin server in a private subnet"
  type        = bool
  default     = false
}

variable "admin_image_id" {
  description = "image id to use for admin server. set either an image id or to Oracle. if value is set to Oracle, the default Oracle Linux platform image will be used."
  type        = string
  default     = "Oracle"
}

variable "admin_instance_principal" {
  description = "enable the admin server host to call OCI API services without requiring api key"
  type        = bool
  default     = true
}

variable "admin_notification_enabled" {
  description = "whether to enable notification on the admin host"
  type        = bool
  default     = false
}

variable "admin_notification_endpoint" {
  description = "the subscription notification endpoint for the admin. email address to be notified."
  type        = string
  default     = ""
}

variable "admin_notification_protocol" {
  description = "the notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "admin_notification_topic" {
  description = "the name of the notification topic."
  type        = string
  default     = "admin"
}

variable "admin_package_upgrade" {
  description = "whether to upgrade the bastion host packages after provisioning. it\u2019s useful to set this to false during development so the bastion is provisioned faster."
  type        = bool
  default     = true
}

variable "admin_shape" {
  description = "shape of admin server instance"
  type        = string
  default     = "VM.Standard.E2.1"
}

variable "admin_timezone" {
  description = "the preferred timezone for the admin host."
  type        = string
  default     = "Australia/Sydney"
}

variable "allow_master_ssh_access" {
  description = "whether to allow ssh access to master nodes"
  type        = bool
  default     = false
}

variable "allow_worker_ssh_access" {
  description = "whether to allow ssh access to worker nodes"
  type        = bool
  default     = false
}

variable "api_fingerprint" {
  description = "fingerprint of oci api private key"
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = "path to oci api private key"
  type        = string
  default     = ""
}

variable "availability_domains" {
  description = "Availability Domains where to provision specific resources"
  type        = map(any)
  default     = { "admin" : 1, "bastion" : 1, "operator" : 1 }
}

variable "bastion_access" {
  description = "cidr from where the bastion can be sshed into. default is ANYWHERE and equivalent to 0.0.0.0/0"
  type        = string
  default     = "ANYWHERE"
}

variable "bastion_enabled" {
  description = "whether to create a bastion host"
  type        = bool
  default     = true
}

variable "bastion_image_id" {
  description = "image id to use for bastion."
  type        = string
  default     = "Autonomous"
}

variable "bastion_notification_enabled" {
  description = "whether to enable notification on the bastion host"
  type        = bool
  default     = false
}

variable "bastion_notification_endpoint" {
  description = "the subscription notification endpoint for the bastion. email address to be notified."
  type        = string
  default     = ""
}

variable "bastion_notification_protocol" {
  description = "The notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "bastion_notification_topic" {
  description = "the name of the notification topic."
  type        = string
  default     = "bastion"
}

variable "bastion_package_upgrade" {
  description = "whether to upgrade the bastion host packages after provisioning. it\u2019s useful to set this to false during development so the bastion is provisioned faster."
  type        = bool
  default     = true
}

variable "bastion_shape" {
  description = "shape of bastion instance"
  type        = string
  default     = "VM.Standard.E2.1"
}

variable "bastion_timezone" {
  description = "the preferred timezone for the bastion host."
  type        = string
  default     = "Australia/Sydney"
}

variable "city" {
  description = ""
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "name of the cluster"
  type        = string
  default     = "olcne"
}

variable "common_name" {
  description = ""
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = "compartment id"
  type        = string
  default     = ""
}

variable "country" {
  description = "2 letter country code"
  type        = string
  default     = ""
}

variable "create_kata_runtime" {
  description = "whether to create kata runtime class"
  type        = bool
  default     = false
}

variable "disable_auto_retries" {
  description = ""
  type        = bool
  default     = false
}

variable "environment_name" {
  description = "name of the environment"
  type        = string
  default     = "dev"
}

variable "helm_version" {
  description = "version of helm client to install on operator"
  type        = string
  default     = "3.1.1"
}

variable "int_lb_shape" {
  description = "the preferred shape of the internal load balancer"
  type        = string
  default     = "100Mbps"
}

variable "kata_runtime_class_name" {
  description = "the name of the kata runtime class"
  type        = string
  default     = "kata"
}

variable "label_prefix" {
  description = "a string that will be prependend to all resources"
  type        = string
  default     = "dev"
}

variable "master_image_id" {
  description = "image id to use for master nodes."
  type        = string
  default     = "Oracle Linux"
}

variable "master_package_upgrade" {
  description = "whether to upgrade the master host packages after provisioning. it\u2019s useful to set this to false during development so the master nodes are provisioned faster."
  type        = bool
  default     = true
}

variable "master_shape" {
  description = "shape of master instance"
  type        = string
  default     = "VM.Standard.E2.2"
}

variable "master_size" {
  description = "number of master nodes to provision"
  type        = number
  default     = 1
}

variable "master_timezone" {
  description = "the preferred timezone for the master nodes."
  type        = string
  default     = "Australia/Sydney"
}

variable "nat_gateway_enabled" {
  description = "whether to create a nat gateway"
  type        = bool
  default     = true
}

variable "netnum" {
  description = "zero-based index of the subnet when the network is masked with the newbit."
  type        = map(any)
  default     = { "admin" : 33, "bastion" : 32, "int_lb" : 16, "master" : 48, "operator" : 18, "pub_lb" : 17, "worker" : 1 }
}

variable "newbits" {
  description = "new mask for the subnet within the virtual network. use as newbits parameter for cidrsubnet function"
  type        = map(any)
  default     = { "admin" : 13, "bastion" : 13, "lb" : 11, "master" : 12, "operator" : 13, "worker" : 2 }
}

variable "operator_image_id" {
  description = "image id to use for operator node."
  type        = string
  default     = "Oracle Linux"
}

variable "operator_package_upgrade" {
  description = "whether to upgrade the operator host packages after provisioning. it\u2019s useful to set this to false during development so the operator nodes are provisioned faster."
  type        = bool
  default     = true
}

variable "operator_shape" {
  description = "shape of operator instance"
  type        = string
  default     = "VM.Standard.E2.2"
}

variable "operator_timezone" {
  description = "the preferred timezone for the operator nodes."
  type        = string
  default     = "Australia/Sydney"
}

variable "org" {
  description = ""
  type        = string
  default     = ""
}

variable "org_unit" {
  description = ""
  type        = string
  default     = ""
}

variable "public_lb_shape" {
  description = "the preferred shape of the public load balancer"
  type        = string
  default     = "100Mbps"
}

variable "region" {
  description = "region"
  type        = string
  default     = ""
}

variable "secret_id" {
  description = "id of secret where the private ssh key is stored in encrypted format"
  type        = string
  default     = ""
}

variable "service_gateway_enabled" {
  description = "whether to create a service gateway"
  type        = bool
  default     = true
}

variable "ssh_private_key_path" {
  description = "path to ssh private key"
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = "path to ssh public key"
  type        = string
  default     = ""
}

variable "state" {
  description = ""
  type        = string
  default     = ""
}

variable "tenancy_id" {
  description = "tenancy id"
  type        = string
  default     = ""
}

variable "user_id" {
  description = "user id"
  type        = string
  default     = ""
}

variable "vcn_cidr" {
  description = "cidr block of VCN"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "internal vcn dns domain that will be prepended to oraclevcn.com"
  type        = string
  default     = "olcne"
}

variable "vcn_name" {
  description = "name of vcn"
  type        = string
  default     = "olcne"
}

variable "worker_image_id" {
  description = "image id to use for worker nodes."
  type        = string
  default     = "Oracle Linux"
}

variable "worker_package_upgrade" {
  description = "whether to upgrade the worker host packages after provisioning. it\u2019s useful to set this to false during development so the worker nodes are provisioned faster."
  type        = bool
  default     = true
}

variable "worker_shape" {
  description = "shape of worker instance"
  type        = string
  default     = "VM.Standard.E2.2"
}

variable "worker_size" {
  description = "number of worker nodes to provision"
  type        = number
  default     = 3
}

variable "worker_timezone" {
  description = "the preferred timezone for the worker nodes."
  type        = string
  default     = "Australia/Sydney"
}
