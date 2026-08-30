variable "admission_controller_options" {
  description = "various Admission Controller options"
  type        = map(bool)
  default     = { "PodSecurityPolicy" : false }
}

variable "allow_node_port_access" {
  description = "Whether to allow access to NodePorts when worker nodes are deployed in public mode."
  type        = bool
  default     = false
}

variable "allow_worker_internet_access" {
  description = "Allow worker nodes to egress to internet. Required if container images are in a registry other than OCIR."
  type        = bool
  default     = true
}

variable "allow_worker_ssh_access" {
  description = "Whether to allow ssh access to worker nodes."
  type        = bool
  default     = false
}

variable "api_fingerprint" {
  description = "Fingerprint of the API private key to use with OCI API."
  type        = string
  default     = ""
}

variable "api_private_key" {
  description = "The contents of the private key file to use with OCI API. This takes precedence over private_key_path if both are specified in the provider."
  type        = string
  default     = ""
}

variable "api_private_key_password" {
  description = "The corresponding private key password to use with the api private key if it is encrypted."
  type        = string
  default     = ""
}

variable "api_private_key_path" {
  description = "The path to the OCI API private key."
  type        = string
  default     = ""
}

variable "availability_domains" {
  description = "Availability Domains where to provision non-OKE resources"
  type        = map(any)
  default     = { "bastion" : 1, "operator" : 1 }
}

variable "bastion_access" {
  description = "A list of CIDR blocks to which ssh access to the bastion host must be restricted. *anywhere* is equivalent to 0.0.0.0/0 and allows ssh access from anywhere."
  type        = list(string)
  default     = ["anywhere"]
}

variable "bastion_image_id" {
  description = "The image id to use for bastion."
  type        = string
  default     = "Autonomous"
}

variable "bastion_notification_endpoint" {
  description = "The subscription notification endpoint for the bastion. The email address to be notified."
  type        = string
  default     = "none"
}

variable "bastion_notification_protocol" {
  description = "The notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "bastion_notification_topic" {
  description = "The name of the notification topic."
  type        = string
  default     = "bastion"
}

variable "bastion_os_version" {
  description = "In case Autonomous Linux is used, allow specification of Autonomous version"
  type        = string
  default     = "7.9"
}

variable "bastion_service_access" {
  description = "A list of CIDR blocks to which ssh access to the bastion service must be restricted. *anywhere* is equivalent to 0.0.0.0/0 and allows ssh access from anywhere."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "bastion_service_name" {
  description = "The name of the bastion service."
  type        = string
  default     = ""
}

variable "bastion_service_target_subnet" {
  description = "The name of the subnet that the bastion service can connect to."
  type        = string
  default     = "operator"
}

variable "bastion_shape" {
  description = "The shape of bastion instance."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }
}

variable "bastion_state" {
  description = "The target state for the bastion instance. Could be set to RUNNING or STOPPED. (Updatable)"
  type        = string
  default     = "RUNNING"
}

variable "bastion_timezone" {
  description = "The preferred timezone for the bastion host."
  type        = string
  default     = "Australia/Sydney"
}

variable "bastion_type" {
  description = "Whether to make the bastion host public or private."
  type        = string
  default     = "public"
}

variable "calico_version" {
  description = "The version of calico to install"
  type        = string
  default     = "3.19"
}

variable "check_node_active" {
  description = "check worker node is active"
  type        = string
  default     = "none"
}

variable "cluster_name" {
  description = "The name of oke cluster."
  type        = string
  default     = "oke"
}

variable "compartment_id" {
  description = "The compartment id where to create all resources."
  type        = string
  default     = ""
}

variable "control_plane_allowed_cidrs" {
  description = "The list of CIDR blocks from which the control plane can be accessed."
  type        = list(string)
  default     = []
}

variable "control_plane_nsgs" {
  description = "An additional list of network security groups (NSG) ids for the cluster endpoint that can be created subsequently."
  type        = list(string)
  default     = []
}

variable "control_plane_type" {
  description = "Whether to allow public or private access to the control plane endpoint"
  type        = string
  default     = "public"
}

variable "create_bastion_host" {
  description = "Whether to create a bastion host."
  type        = bool
  default     = true
}

variable "create_bastion_service" {
  description = "Whether to create a bastion service that allows access to private hosts."
  type        = bool
  default     = false
}

variable "create_drg" {
  description = "whether to create Dynamic Routing Gateway. If set to true, creates a Dynamic Routing Gateway and attach it to the VCN."
  type        = bool
  default     = false
}

variable "create_operator" {
  description = "Whether to create an operator server in a private subnet."
  type        = bool
  default     = true
}

variable "create_service_account" {
  description = "Whether to create a service account. A service account is required for CI/CD. see https://docs.cloud.oracle.com/iaas/Content/ContEng/Tasks/contengaddingserviceaccttoken.htm"
  type        = bool
  default     = false
}

variable "dashboard_enabled" {
  description = "Whether to enable kubernetes dashboard."
  type        = bool
  default     = false
}

variable "debug_mode" {
  description = "Whether to turn on debug mode."
  type        = bool
  default     = false
}

variable "drg_display_name" {
  description = "(Updatable) Name of Dynamic Routing Gateway. Does not have to be unique."
  type        = string
  default     = "drg"
}

variable "email_address" {
  description = "The email address used for OCIR."
  type        = string
  default     = "none"
}

variable "enable_bastion_notification" {
  description = "Whether to enable notification on the bastion host."
  type        = bool
  default     = false
}

variable "enable_calico" {
  description = "Whether to install calico for network pod security policy"
  type        = bool
  default     = false
}

variable "enable_gatekeeper" {
  description = "Whether to install Gatekeeper"
  type        = bool
  default     = false
}

variable "enable_metric_server" {
  description = "Whether to install metricserver for collecting metrics and for HPA"
  type        = bool
  default     = false
}

variable "enable_operator_instance_principal" {
  description = "Whether to enable the operator to call OCI API services without requiring api key."
  type        = bool
  default     = true
}

variable "enable_operator_notification" {
  description = "Whether to enable notification on the operator host."
  type        = bool
  default     = false
}

variable "enable_operator_pv_encryption_in_transit" {
  description = "Whether to enable in-transit encryption for the data volume's paravirtualized attachment."
  type        = bool
  default     = false
}

variable "enable_pv_encryption_in_transit" {
  description = "Whether to enable in-transit encryption for the data volume's paravirtualized attachment. This field applies to both block volumes and boot volumes. The default value is false"
  type        = bool
  default     = false
}

variable "enable_vpa" {
  description = "Whether to install vertical pod autoscaler"
  type        = bool
  default     = false
}

variable "enable_waf" {
  description = "Whether to enable WAF monitoring of load balancers"
  type        = bool
  default     = false
}

variable "freeform_tags" {
  description = "Tags to apply to different resources."
  type = object({
    vcn      = map(any),
    bastion  = map(any),
    operator = map(any),
    oke      = map(map(any))
  })
  default = { "bastion" : { "environment" : "dev", "role" : "bastion" }, "oke" : { "service_lb" : { "environment" : "dev", "role" : "load balancer" } }, "operator" : { "environment" : "dev", "role" : "operator" }, "vcn" : { "environment" : "dev" } }
}

variable "gatekeeeper_version" {
  description = "The version of Gatekeeper to install"
  type        = string
  default     = "3.7"
}

variable "home_region" {
  description = "The tenancy's home region. Required to perform identity operations."
  type        = string
  default     = ""
}

variable "image_signing_keys" {
  description = "A list of KMS key ids used by the worker nodes to verify signed images. The keys must use RSA algorithm."
  type        = list(string)
  default     = []
}

variable "internal_lb_allowed_cidrs" {
  description = "The list of CIDR blocks from which the internal load balancer can be accessed."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "internal_lb_allowed_ports" {
  description = "List of allowed ports for internal load balancers."
  type        = list(any)
  default     = [80, 443]
}

variable "internet_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to Internet Gateway Route Table"
  type        = list(map(string))
  default     = ""
}

variable "kms_key_id" {
  description = "The id of the OCI KMS key to be used as the master encryption key for Kubernetes secrets encryption."
  type        = string
  default     = ""
}

variable "kubernetes_version" {
  description = "The version of kubernetes to use when provisioning OKE or to upgrade an existing OKE cluster to."
  type        = string
  default     = "v1.21.5"
}

variable "label_prefix" {
  description = "A string that will be prepended to all resources."
  type        = string
  default     = "none"
}

variable "load_balancers" {
  description = "The type of subnets to create for load balancers."
  type        = string
  default     = "public"
}

variable "local_peering_gateways" {
  description = "Map of Local Peering Gateways to attach to the VCN."
  type        = map(any)
  default     = ""
}

variable "lockdown_default_seclist" {
  description = "whether to remove all default security rules from the VCN Default Security List"
  type        = bool
  default     = true
}

variable "nat_gateway_public_ip_id" {
  description = "OCID of reserved IP address for NAT gateway. The reserved public IP address needs to be manually created."
  type        = string
  default     = "none"
}

variable "nat_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to NAT Gateway Route Table"
  type        = list(map(string))
  default     = ""
}

variable "node_pool_image_id" {
  description = "The ocid of a custom image to use for worker node."
  type        = string
  default     = "none"
}

variable "node_pool_name_prefix" {
  description = "The prefix of the node pool name."
  type        = string
  default     = "np"
}

variable "node_pool_os" {
  description = "The name of image to use."
  type        = string
  default     = "Oracle Linux"
}

variable "node_pool_os_version" {
  description = "The version of operating system to use for the worker nodes."
  type        = string
  default     = "7.9"
}

variable "node_pool_volume_kms_key_id" {
  description = "The id of the OCI KMS key to be used as the master encryption key for Boot Volume and Block Volume encryption."
  type        = string
  default     = ""
}

variable "node_pools" {
  description = "Tuple of node pools. Each key maps to a node pool. Each value is a tuple of shape (string),ocpus(number) , node_pool_size(number) and boot_volume_size(number)"
  type        = any
  default     = { "np1" : { "boot_volume_size" : 150, "label" : { "app" : "frontend", "pool" : "np1" }, "memory" : 16, "node_pool_size" : 1, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }, "np2" : { "boot_volume_size" : 150, "node_pool_size" : 2, "shape" : "VM.Standard.E2.2" }, "np3" : { "node_pool_size" : 1, "shape" : "VM.Standard.E2.2" } }
}

variable "node_pools_to_drain" {
  description = "List of node pool names to drain during an upgrade. This list is used to determine the worker nodes to drain."
  type        = list(string)
  default     = ["none"]
}

variable "nodepool_upgrade_method" {
  description = "The upgrade method to use when upgrading to a new version. Only out-of-place supported at the moment."
  type        = string
  default     = "out_of_place"
}

variable "operator_image_id" {
  description = "The image id to use for operator server. Set either an image id or to Oracle. If value is set to Oracle, the default Oracle Linux platform image will be used."
  type        = string
  default     = "Oracle"
}

variable "operator_notification_endpoint" {
  description = "The subscription notification endpoint for the operator. Email address to be notified."
  type        = string
  default     = "none"
}

variable "operator_notification_protocol" {
  description = "The notification protocol used."
  type        = string
  default     = "EMAIL"
}

variable "operator_notification_topic" {
  description = "The name of the notification topic."
  type        = string
  default     = "operator"
}

variable "operator_nsg_ids" {
  description = "An optional and updatable list of network security groups that the operator will be part of."
  type        = list(string)
  default     = []
}

variable "operator_os_version" {
  description = "The Oracle Linux version to use for the operator host"
  type        = string
  default     = "8"
}

variable "operator_shape" {
  description = "The shape of operator instance."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }
}

variable "operator_state" {
  description = "The target state for the operator instance. Could be set to RUNNING or STOPPED. (Updatable)"
  type        = string
  default     = "RUNNING"
}

variable "operator_timezone" {
  description = "The preferred timezone for the operator host."
  type        = string
  default     = "Australia/Sydney"
}

variable "operator_volume_kms_id" {
  description = "The OCID of the OCI KMS key to assign as the master encryption key for the boot volume."
  type        = string
  default     = ""
}

variable "pods_cidr" {
  description = "The CIDR range used for IP addresses by the pods. A /16 CIDR is generally sufficient. This CIDR should not overlap with any subnet range in the VCN (it can also be outside the VCN CIDR range)."
  type        = string
  default     = "10.244.0.0/16"
}

variable "preferred_load_balancer" {
  description = "The preferred load balancer subnets that OKE will automatically choose when creating a load balancer. valid values are public or internal. if 'public' is chosen, the value for load_balancers must be either 'public' or 'both'. If 'private' is chosen, the value for load_balancers must be either 'internal' or 'both'."
  type        = string
  default     = "public"
}

variable "public_lb_allowed_cidrs" {
  description = "The list of CIDR blocks from which the public load balancer can be accessed."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "public_lb_allowed_ports" {
  description = "List of allowed ports for public load balancers."
  type        = list(any)
  default     = [443]
}

variable "region" {
  description = "The OCI region where OKE resources will be created."
  type        = string
  default     = ""
}

variable "secret_id" {
  description = "The OCID of the Secret on OCI Vault which holds the authentication token."
  type        = string
  default     = "none"
}

variable "secret_name" {
  description = "The name of the Kubernetes secret that will hold the authentication token"
  type        = string
  default     = "ocirsecret"
}

variable "secret_namespace" {
  description = "The Kubernetes namespace for where the OCIR secret will be created."
  type        = string
  default     = "default"
}

variable "service_account_cluster_role_binding" {
  description = "The cluster role binding name"
  type        = string
  default     = "cluster-admin"
}

variable "service_account_name" {
  description = "The name of service account to create"
  type        = string
  default     = "kubeconfigsa"
}

variable "service_account_namespace" {
  description = "The Kubernetes namespace where to create the service account"
  type        = string
  default     = "kube-system"
}

variable "services_cidr" {
  description = "The CIDR range used by exposed Kubernetes services (ClusterIPs). This CIDR should not overlap with the VCN CIDR range."
  type        = string
  default     = "10.96.0.0/16"
}

variable "ssh_private_key" {
  description = "The contents of the private ssh key file."
  type        = string
  default     = ""
}

variable "ssh_private_key_path" {
  description = "The path to ssh private key."
  type        = string
  default     = "none"
}

variable "ssh_public_key" {
  description = "The contents of the ssh public key."
  type        = string
  default     = ""
}

variable "ssh_public_key_path" {
  description = "The path to ssh public key."
  type        = string
  default     = "none"
}

variable "subnets" {
  description = "parameters to cidrsubnet function to calculate subnet masks within the VCN."
  type        = map(any)
  default     = { "bastion" : { "netnum" : 0, "newbits" : 13 }, "cp" : { "netnum" : 2, "newbits" : 13 }, "int_lb" : { "netnum" : 16, "newbits" : 11 }, "operator" : { "netnum" : 1, "newbits" : 13 }, "pub_lb" : { "netnum" : 17, "newbits" : 11 }, "workers" : { "netnum" : 1, "newbits" : 2 } }
}

variable "tenancy_id" {
  description = "The tenancy id of the OCI Cloud Account in which to create the resources."
  type        = string
  default     = ""
}

variable "upgrade_bastion" {
  description = "Whether to upgrade the bastion host packages after provisioning. it\u2019s useful to set this to false during development so the bastion is provisioned faster."
  type        = bool
  default     = true
}

variable "upgrade_nodepool" {
  description = "Whether to upgrade the Kubernetes version of the node pools."
  type        = bool
  default     = false
}

variable "upgrade_operator" {
  description = "Whether to upgrade the operator packages after provisioning. It\u2019s useful to set this to false during development so the operator is provisioned faster."
  type        = bool
  default     = true
}

variable "use_encryption" {
  description = "Whether to use OCI KMS to encrypt Kubernetes secrets."
  type        = bool
  default     = false
}

variable "use_signed_images" {
  description = "Whether to enforce the use of signed images. If set to true, at least 1 RSA key must be provided through image_signing_keys."
  type        = bool
  default     = false
}

variable "user_id" {
  description = "The id of the user that terraform will use to create the resources."
  type        = string
  default     = ""
}

variable "username" {
  description = "The username that can login to the selected tenancy. This is different from tenancy_id. *Required* if secret_id is set."
  type        = string
  default     = "none"
}

variable "vcn_cidrs" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet."
  type        = string
  default     = "oke"
}

variable "vcn_name" {
  description = "name of vcn"
  type        = string
  default     = "oke-vcn"
}

variable "vpa_version" {
  description = "The version of vertical pod autoscaler to install"
  type        = string
  default     = "0.8"
}

variable "worker_nsgs" {
  description = "An additional list of network security groups (NSG) ids for the worker nodes that can be created subsequently."
  type        = list(any)
  default     = []
}

variable "worker_type" {
  description = "Whether to provision public or private workers."
  type        = string
  default     = "private"
}
