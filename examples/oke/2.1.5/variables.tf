variable "admin_enabled" {
  description = "whether to create an admin server in a private subnet"
  type        = bool
  default     = true
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
  default     = ""
}

variable "admin_timezone" {
  description = "the preferred timezone for the admin host."
  type        = string
  default     = ""
}

variable "allow_node_port_access" {
  description = "whether to allow access to NodePorts when worker nodes are deployed in public mode"
  type        = bool
  default     = false
}

variable "allow_worker_ssh_access" {
  description = "whether to allow ssh access to worker nodes when worker nodes are deployed in public mode"
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
  description = "Availability Domains where to provision non-OKE resources"
  type        = map(any)
  default     = { "admin" : 1, "bastion" : 1 }
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
  default     = ""
}

variable "bastion_timezone" {
  description = "the preferred timezone for the bastion host."
  type        = string
  default     = ""
}

variable "calico_version" {
  description = "version of calico to install"
  type        = string
  default     = "3.9"
}

variable "cluster_name" {
  description = "name of oke cluster"
  type        = string
  default     = ""
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = ""
}

variable "create_auth_token" {
  description = "whether to create an auth token to use with OCIR"
  type        = bool
  default     = false
}

variable "create_service_account" {
  description = "whether to create a service account. A service account is required for CI/CD. see https://docs.cloud.oracle.com/iaas/Content/ContEng/Tasks/contengaddingserviceaccttoken.htm"
  type        = bool
  default     = false
}

variable "dashboard_enabled" {
  description = "whether to enable kubernetes dashboard."
  type        = bool
  default     = false
}

variable "disable_auto_retries" {
  description = ""
  type        = bool
  default     = true
}

variable "email_address" {
  description = "email address used for OCIR"
  type        = string
  default     = ""
}

variable "existing_key_id" {
  description = "id of existing key"
  type        = string
  default     = ""
}

variable "helm_version" {
  description = "version of helm to install"
  type        = string
  default     = "3.1.1"
}

variable "install_calico" {
  description = "whether to install calico for network pod security policy"
  type        = bool
  default     = false
}

variable "install_helm" {
  description = "whether to install helm client on the bastion"
  type        = bool
  default     = false
}

variable "install_metricserver" {
  description = "whether to install metricserver for collecting metrics and for HPA"
  type        = bool
  default     = false
}

variable "kubernetes_version" {
  description = "version of kubernetes to use"
  type        = string
  default     = "LATEST"
}

variable "label_prefix" {
  description = "a string that will be prepended to all resources"
  type        = string
  default     = ""
}

variable "lb_subnet_type" {
  description = "type of load balancer subnets to create."
  type        = string
  default     = "public"
}

variable "nat_gateway_enabled" {
  description = "whether to create a nat gateway in the vcn."
  type        = bool
  default     = true
}

variable "netnum" {
  description = "zero-based index of the subnet when the network is masked with the newbit. use as netnum parameter for cidrsubnet function"
  type        = map(any)
  default     = { "admin" : 33, "bastion" : 32, "int_lb" : 16, "pub_lb" : 17, "workers" : 1 }
}

variable "newbits" {
  description = "new mask for the subnet within the virtual network. use as newbits parameter for cidrsubnet function"
  type        = map(any)
  default     = { "admin" : 13, "bastion" : 13, "lb" : 11, "workers" : 2 }
}

variable "node_pool_image_id" {
  description = "ocid of custom image to use for worker node"
  type        = string
  default     = "NONE"
}

variable "node_pool_name_prefix" {
  description = "prefix of node pool name"
  type        = string
  default     = "np"
}

variable "node_pool_os" {
  description = "name of image to use"
  type        = string
  default     = "Oracle Linux"
}

variable "node_pool_os_version" {
  description = "version of image Operating System to use"
  type        = string
  default     = "7.7"
}

variable "node_pools" {
  description = "tuple node pools. each key maps to a node pool. each value is a tuple of shape (string) and size(number)"
  type        = map(any)
  default     = ""
}

variable "ocir_urls" {
  description = "urls of ocir"
  type        = map(string)
  default     = { "ap-melbourne-1" : "mel.ocir.io", "ap-mumbai-1" : "bom.ocir.io", "ap-osaka-1" : "kix.ocir.io", "ap-seoul-1" : "icn.ocir.io", "ap-sydney-1" : "syd.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-amsterdam-1" : "ams.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "eu-zurich-1" : "zrh.ocir.io", "me-jeddah-1" : "jed.ocir.io", "sa-saopaulo-1" : "gru.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }
}

variable "pods_cidr" {
  description = "this is the CIDR range used for IP addresses by the pods. a /16 CIDR is generally sufficient. This CIDR should not overlap with any subnet range in the VCN (it can also be outside the VCN CIDR range)."
  type        = string
  default     = "10.244.0.0/16"
}

variable "preferred_lb_subnets" {
  description = "preferred load balancer subnets that OKE will automatically choose when creating a load balancer. valid values are public or internal. if 'public' is chosen, the value for lb_subnet_type must be either 'public' or 'both'. If 'private' is chosen, the value for lb_subnet_type must be either 'internal' or 'both'"
  type        = string
  default     = "public"
}

variable "region" {
  description = "the oci region where resources will be created"
  type        = string
  default     = ""
}

variable "service_account_cluster_role_binding" {
  description = "cluster role binding name"
  type        = string
  default     = ""
}

variable "service_account_name" {
  description = "name of service account to create"
  type        = string
  default     = "kubeconfigsa"
}

variable "service_account_namespace" {
  description = "kubernetes namespace where to create the service account"
  type        = string
  default     = "kube-system"
}

variable "service_gateway_enabled" {
  description = "whether to create a service gateway"
  type        = bool
  default     = true
}

variable "services_cidr" {
  description = "This is the CIDR range used by exposed Kubernetes services (ClusterIPs). this CIDR should not overlap with the VCN CIDR range."
  type        = string
  default     = "10.96.0.0/16"
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

variable "tenancy_id" {
  description = "tenancy id where to create the sources"
  type        = string
  default     = ""
}

variable "tenancy_name" {
  description = "tenancy name to use when creating the ocir secret"
  type        = string
  default     = ""
}

variable "use_encryption" {
  description = "whether to use OCI Key Management to encrypt data"
  type        = bool
  default     = false
}

variable "user_id" {
  description = "id of user that terraform will use to create the resources"
  type        = string
  default     = ""
}

variable "username" {
  description = "username to access OCIR"
  type        = string
  default     = ""
}

variable "vcn_cidr" {
  description = "cidr block of VCN"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = ""
  type        = string
  default     = ""
}

variable "vcn_name" {
  description = "name of vcn"
  type        = string
  default     = ""
}

variable "worker_mode" {
  description = "whether to provision public or private workers"
  type        = string
  default     = "private"
}
