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
  description = "ADs where to provision resources"
  type        = map(any)
  default     = { "bastion" : 1, "lb_ad1" : 1, "lb_ad2" : 2, "lb_ad3" : 3, "workers_ad1" : 1, "workers_ad2" : 2, "workers_ad3" : 3 }
}

variable "bastion_shape" {
  description = "shape of bastion instance"
  type        = string
  default     = "VM.Standard2.1"
}

variable "calico_version" {
  description = "version of calico to install"
  type        = string
  default     = "3.6"
}

variable "cluster_name" {
  description = "name of oke cluster"
  type        = string
  default     = "oke"
}

variable "compartment_name" {
  description = "compartment name"
  type        = string
  default     = ""
}

variable "compartment_ocid" {
  description = "compartment ocid"
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
  description = "email address used for OICR"
  type        = string
  default     = ""
}

variable "enable_instance_principal" {
  description = "enable the bastion hosts to call OCI API services without requiring api key"
  type        = string
  default     = false
}

variable "helm_version" {
  description = "version of helm to install"
  type        = string
  default     = "2.13.0"
}

variable "image_ocid" {
  description = ""
  type        = string
  default     = "NONE"
}

variable "image_operating_system" {
  description = "operating system to use for the bastion"
  type        = string
  default     = "Oracle Linux"
}

variable "image_operating_system_version" {
  description = "version of selected operating system"
  type        = string
  default     = "7.6"
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

variable "nat_gateway_name" {
  description = "display name of the nat gateway"
  type        = string
  default     = "nat"
}

variable "newbits" {
  description = "new mask for the subnet within the virtual network. use as newbits parameter for cidrsubnet function"
  type        = map(any)
  default     = { "bastion" : "8", "lb" : "8", "workers" : "8" }
}

variable "node_pool_name_prefix" {
  description = "prefix of node pool name"
  type        = string
  default     = "np"
}

variable "node_pool_node_image_name" {
  description = "name of image to use"
  type        = string
  default     = "Oracle-Linux-7.5"
}

variable "node_pool_node_shape" {
  description = "shape of worker nodes"
  type        = string
  default     = "VM.Standard2.1"
}

variable "node_pool_quantity_per_subnet" {
  description = "number of workers in node pool"
  type        = string
  default     = 1
}

variable "node_pools" {
  description = "number of node pools"
  type        = string
  default     = 1
}

variable "nodepool_topology" {
  description = "whether to use 2 ADs or 3ADs for the node pool. Possible values are 2 or 3 only"
  type        = string
  default     = 3
}

variable "ocir_urls" {
  description = "urls of ocir"
  type        = map(any)
  default     = { "ap-seoul-1" : "icn.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }
}

variable "pods_cidr" {
  description = "This is the CIDR range used for IP addresses by your pods. A /16 CIDR is generally sufficient. This CIDR should not overlap with any subnet range in the VCN (it can also be outside the VCN CIDR range)."
  type        = string
  default     = "10.244.0.0/16"
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
  default     = { "bastion" : 11, "lb_ad1" : 12, "lb_ad2" : 22, "lb_ad3" : 32, "workers_ad1" : 13, "workers_ad2" : 23, "workers_ad3" : 33 }
}

variable "tenancy_name" {
  description = "tenancy name"
  type        = string
  default     = ""
}

variable "tenancy_ocid" {
  description = "tenancy id"
  type        = string
  default     = ""
}

variable "tiller_enabled" {
  description = "whether to enable tiller"
  type        = string
  default     = true
}

variable "user_ocid" {
  description = "user ocid"
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

variable "vcn_dns_name" {
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
