variable "add_incubator_repo" {
  description = "whether to add incubator repo"
  type        = string
  default     = false
}

variable "add_jetstack_repo" {
  description = "whether to add jetstack repo. Required for cert-manager"
  type        = string
  default     = false
}

variable "allow_node_port_access" {
  description = "whether to allow access to NodePorts when worker nodes are deployed in public mode"
  type        = string
  default     = false
}

variable "allow_worker_ssh_access" {
  description = "whether to allow ssh access to worker nodes when worker nodes are deployed in public mode"
  type        = string
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
  description = "ADs where to provision non-OKE resources"
  type        = map(any)
  default     = { "bastion" : 1 }
}

variable "bastion_access" {
  description = "cidr from where the bastion can be sshed into. Default is ANYWHERE and equivalent to 0.0.0.0/0"
  type        = string
  default     = "ANYWHERE"
}

variable "bastion_package_upgrade" {
  description = "Upgrade the instance on first boot"
  type        = bool
  default     = true
}

variable "bastion_shape" {
  description = "shape of bastion instance"
  type        = string
  default     = "VM.Standard.E2.1"
}

variable "calico_version" {
  description = "version of calico to install"
  type        = string
  default     = "3.9"
}

variable "cluster_name" {
  description = "name of oke cluster"
  type        = string
  default     = "oke"
}

variable "compartment_id" {
  description = "compartment id"
  type        = string
  default     = ""
}

variable "compartment_name" {
  description = "compartment name"
  type        = string
  default     = ""
}

variable "create_auth_token" {
  description = "whether to create an auth token to use with OCIR"
  type        = string
  default     = false
}

variable "create_bastion" {
  description = ""
  type        = string
  default     = true
}

variable "create_nat_gateway" {
  description = "whether to create a nat gateway"
  type        = string
  default     = true
}

variable "create_service_gateway" {
  description = "whether to create a service gateway"
  type        = string
  default     = true
}

variable "dashboard_enabled" {
  description = "whether to enable kubernetes dashboard"
  type        = string
  default     = true
}

variable "disable_auto_retries" {
  description = ""
  type        = string
  default     = true
}

variable "email_address" {
  description = "email address used for OCIR"
  type        = string
  default     = ""
}

variable "enable_instance_principal" {
  description = "enable the bastion hosts to call OCI API services without requiring api key"
  type        = string
  default     = false
}

variable "existing_key_id" {
  description = "id of existing key"
  type        = string
  default     = ""
}

variable "existing_vault_id" {
  description = "id of existing vault to use to create an encryption key"
  type        = string
  default     = ""
}

variable "helm_version" {
  description = "version of helm to install"
  type        = string
  default     = "2.14.3"
}

variable "image_id" {
  description = ""
  type        = string
  default     = "NONE"
}

variable "install_calico" {
  description = "whether to install calico for network pod security policy"
  type        = string
  default     = false
}

variable "install_helm" {
  description = "whether to install helm client on the bastion"
  type        = string
  default     = false
}

variable "install_metricserver" {
  description = "whether to install metricserver for collecting metrics and for HPA"
  type        = string
  default     = false
}

variable "kubernetes_version" {
  description = "version of kubernetes to use"
  type        = string
  default     = "LATEST"
}

variable "label_prefix" {
  description = ""
  type        = string
  default     = "oke"
}

variable "lb_subnet_type" {
  description = "type of load balancer subnets to create."
  type        = string
  default     = "public"
}

variable "nat_gateway_name" {
  description = "display name of the nat gateway"
  type        = string
  default     = "nat"
}

variable "newbits" {
  description = "new mask for the subnet within the virtual network. use as newbits parameter for cidrsubnet function"
  type        = map(any)
  default     = { "bastion" : 13, "lb" : 11, "workers" : 2 }
}

variable "node_pool_image_id" {
  description = "OCID of custom image to use for worker node"
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
  default     = "7.6"
}

variable "node_pools" {
  description = "number of node pools"
  type        = map(any)
  default     = ""
}

variable "ocir_urls" {
  description = "urls of ocir"
  type        = map(any)
  default     = { "ap-mumbai-1" : "bom.ocir.io", "ap-seoul-1" : "icn.ocir.io", "ap-sydney-1" : "syd.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "eu-zurich-1" : "zrh.ocir.io", "sa-saopaulo-1" : "gru.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }
}

variable "pods_cidr" {
  description = "This is the CIDR range used for IP addresses by your pods. A /16 CIDR is generally sufficient. This CIDR should not overlap with any subnet range in the VCN (it can also be outside the VCN CIDR range)."
  type        = string
  default     = "10.244.0.0/16"
}

variable "preferred_lb_subnets" {
  description = "preferred load balancer subnets that OKE will automatically choose when creating a load balancer. Valid values are public or internal. If 'public' is chosen, the value for lb_subnet_type must be either 'public' or 'both'. If 'private' is chosen, the value for lb_subnet_type must be either 'internal' or 'both'"
  type        = string
  default     = "public"
}

variable "region" {
  description = "region"
  type        = string
  default     = "us-phoenix-1"
}

variable "service_gateway_name" {
  description = "name of service gateway"
  type        = string
  default     = "sg"
}

variable "services_cidr" {
  description = "This is the CIDR range used by exposed Kubernetes services (ClusterIPs). This CIDR should not overlap with the VCN CIDR range."
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

variable "subnets" {
  description = "zero-based index of the subnet when the network is masked with the newbit."
  type        = map(any)
  default     = { "bastion" : 32, "int_lb" : 16, "pub_lb" : 17, "workers" : 1 }
}

variable "tenancy_id" {
  description = "tenancy id"
  type        = string
  default     = ""
}

variable "tenancy_name" {
  description = "tenancy name"
  type        = string
  default     = ""
}

variable "tiller_enabled" {
  description = "whether to enable tiller"
  type        = string
  default     = true
}

variable "use_encryption" {
  description = "whether to use OCI Key Management to encrypt data"
  type        = string
  default     = false
}

variable "use_existing_key" {
  description = "whether to use an existing key for encryption"
  type        = string
  default     = false
}

variable "use_existing_vault" {
  description = "whether to use an existing vault to create an encryption key"
  type        = string
  default     = true
}

variable "user_id" {
  description = "user id"
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
  default     = "oke"
}

variable "vcn_name" {
  description = "name of vcn"
  type        = string
  default     = "oke vcn"
}

variable "worker_mode" {
  description = "whether to provision public or private workers"
  type        = string
  default     = "private"
}
