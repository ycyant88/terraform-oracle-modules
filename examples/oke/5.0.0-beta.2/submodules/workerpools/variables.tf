variable "api_fingerprint" {
  description = "Fingerprint of the API private key to use with OCI API."
  type        = string
  default     = ""
}

variable "api_private_key" {
  description = "The contents of the private key file to use with OCI API, optionally base64-encoded. This takes precedence over private_key_path if both are specified in the provider."
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

variable "apiserver_private_host" {
  description = "Cluster private apiserver IP address. Resolved automatically when OKE cluster is found using cluster_id."
  type        = string
  default     = ""
}

variable "apiserver_public_host" {
  description = "Cluster public apiserver IP address, when enabled. Resolved automatically when OKE cluster is found using cluster_id."
  type        = string
  default     = ""
}

variable "assign_dns" {
  description = "Whether to assign DNS records to created instances"
  type        = bool
  default     = true
}

variable "assign_public_ip" {
  description = "Whether to assign public IP addresses to worker nodes"
  type        = bool
  default     = false
}

variable "block_volume_type" {
  description = "The default block volume attachment type for Instance Configurations."
  type        = string
  default     = "paravirtualized"
}

variable "boot_volume_size" {
  description = "Default size in GB for the boot volume of created worker nodes"
  type        = number
  default     = 50
}

variable "cloudinit" {
  description = "Base64-encoded cloud init script to run on instance boot"
  type        = string
  default     = ""
}

variable "cluster_ca_cert" {
  description = "Required for unmanaged instance pools for secure control plane connection"
  type        = string
  default     = ""
}

variable "cluster_dns" {
  description = "Cluster DNS resolver IP address. The provided value used with default servicesCidr 10.96.0.0/16 should only require modification in the case of conflict."
  type        = string
  default     = "10.96.5.5"
}

variable "cluster_id" {
  description = "An existing OKE cluster ID when mode = node-pool"
  type        = string
  default     = ""
}

variable "cni_type" {
  description = "The CNI for the cluster. Choose between flannel or npn"
  type        = string
  default     = "flannel"
}

variable "compartment_id" {
  description = "The compartment id where resources will be created."
  type        = string
  default     = ""
}

variable "compartment_ocid" {
  description = "A compartment OCID automatically populated by Resource Manager."
  type        = string
  default     = ""
}

variable "config_file_profile" {
  description = "The profile within the OCI config file to use."
  type        = string
  default     = "DEFAULT"
}

variable "create_policies" {
  description = "Whether to create Dynamic Group and Policy IAM resources for extra permissions."
  type        = bool
  default     = true
}

variable "current_user_ocid" {
  description = "A user OCID automatically populated by Resource Manager."
  type        = string
  default     = ""
}

variable "defined_tags" {
  description = "Tags to apply to created resources"
  type        = map(string)
  default     = {}
}

variable "enable_pv_encryption_in_transit" {
  description = "Whether to enable in-transit encryption for the data volume's paravirtualized attachment. This field applies to both block volumes and boot volumes. The default value is false"
  type        = bool
  default     = false
}

variable "enabled" {
  description = "Whether to apply resources for a worker pool when unspecified on its definition"
  type        = bool
  default     = true
}

variable "freeform_tags" {
  description = "Tags to apply to created resources"
  type        = map(string)
  default     = {}
}

variable "home_region" {
  description = "The tenancy's home region. Required to perform identity operations."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "Default image OCID for worker pools when unspecified and image_type = custom"
  type        = string
  default     = ""
}

variable "image_type" {
  description = "Whether to use a Platform, OKE or custom image. When custom is set, the image_id must be specified."
  type        = string
  default     = "oke"
}

variable "kubeproxy_mode" {
  description = "The mode in which to run kube-proxy."
  type        = string
  default     = "iptables"
}

variable "kubernetes_version" {
  description = "The Kubernetes version"
  type        = string
  default     = "v1.24.1"
}

variable "label_prefix" {
  description = "A string that will be prepended to all resources"
  type        = string
  default     = ""
}

variable "memory" {
  description = "Default memory in GB for flex shapes"
  type        = number
  default     = 16
}

variable "mode" {
  description = "Default management mode for worker pools when unspecified"
  type        = string
  default     = "node-pool"
}

variable "network_compartment_id" {
  description = "The compartment id where network resources will be created."
  type        = string
  default     = ""
}

variable "node_labels" {
  description = "Default Kubernetes node labels applied to worker pools, merged with group-level labels."
  type        = map(string)
  default     = {}
}

variable "ocpus" {
  description = "Default ocpus for flex shapes"
  type        = number
  default     = 1
}

variable "os" {
  description = "The name of image to use. Must be 'Oracle Linux'."
  type        = string
  default     = "Oracle Linux"
}

variable "os_version" {
  description = "The version of operating system to use for the worker nodes."
  type        = string
  default     = "8"
}

variable "pod_nsg_ids" {
  description = "An additional list of network security group (NSG) OCIDs for pod security"
  type        = list(string)
  default     = []
}

variable "pod_subnet_id" {
  description = "The subnet OCID used for pods when cni_type = npn"
  type        = string
  default     = ""
}

variable "region" {
  description = "The OCI region where OKE resources will be created."
  type        = string
  default     = "us-ashburn-1"
}

variable "shape" {
  description = "Default shape for instance pools"
  type        = string
  default     = "VM.Standard.E4.Flex"
}

variable "size" {
  description = "Default number of desired nodes for created worker pools"
  type        = number
  default     = 0
}

variable "sriov_num_vfs" {
  description = "Number of SR-IOV virtual functions to create for each physical function on Mellanox NICs when present. 0 to disable."
  type        = number
  default     = 1
}

variable "ssh_private_key" {
  description = "The contents of the private ssh key file, optionally base64-encoded."
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

variable "subnet_id" {
  description = "The subnet OCID used for instances"
  type        = string
  default     = ""
}

variable "tenancy_id" {
  description = "The tenancy id of the OCI Cloud Account in which to create the resources."
  type        = string
  default     = ""
}

variable "tenancy_ocid" {
  description = "A tenancy OCID automatically populated by Resource Manager."
  type        = string
  default     = ""
}

variable "timezone" {
  description = "The preferred timezone for the worker nodes"
  type        = string
  default     = "Etc/UTC"
}

variable "user_id" {
  description = "The id of the user that terraform will use to create the resources."
  type        = string
  default     = ""
}

variable "volume_kms_key_id" {
  description = "The OCID of the OCI KMS key to be used as the master encryption key for Boot Volume and Block Volume encryption. Oracle-managed encryption if null."
  type        = string
  default     = ""
}

variable "worker_compartment_id" {
  description = "The compartment id where worker pool resources will be created."
  type        = string
  default     = ""
}

variable "worker_image_id" {
  description = "Default image for worker pools when unspecified"
  type        = string
  default     = ""
}

variable "worker_image_os" {
  description = "Default worker base image operating system name when worker_image_type = 'oke' or 'platform'."
  type        = string
  default     = "Oracle Linux"
}

variable "worker_image_os_version" {
  description = "Default worker base image operating system version when worker_image_type = 'oke' or 'platform'."
  type        = string
  default     = "8"
}

variable "worker_image_type" {
  description = "Whether to use a Platform, OKE or custom image. When custom is set, the worker_image_id must be specified."
  type        = string
  default     = "custom"
}

variable "worker_nsg_ids" {
  description = "An additional list of network security group (NSG) OCIDs for node security"
  type        = list(string)
  default     = []
}

variable "worker_pool_boot_volume_size" {
  description = "Default size in GB for the boot volume of created worker nodes"
  type        = number
  default     = 50
}

variable "worker_pool_cloudinit" {
  description = "Base64-encoded cloud init script to run on worker node boot"
  type        = string
  default     = ""
}

variable "worker_pool_enabled" {
  description = "Whether to apply resources for a group when unspecified"
  type        = bool
  default     = true
}

variable "worker_pool_memory" {
  description = "Default memory in GB for flex shapes"
  type        = number
  default     = 16
}

variable "worker_pool_mode" {
  description = "Default management mode for worker pools when unspecified. Only node-pool is currently supported."
  type        = string
  default     = "node-pool"
}

variable "worker_pool_ocpus" {
  description = "Default ocpus for flex shapes"
  type        = number
  default     = 1
}

variable "worker_pool_shape" {
  description = "Default shape for instance pools when undefined"
  type        = string
  default     = "VM.Standard.E4.Flex"
}

variable "worker_pool_size" {
  description = "Default size for worker pools when unspecified"
  type        = number
  default     = 0
}

variable "worker_pool_subnet_id" {
  description = "The subnet OCID used for instances"
  type        = string
  default     = ""
}

variable "worker_pools" {
  description = "Tuple of OKE worker pools where each key maps to the OCID of an OCI resource, and value contains its definition"
  type        = any
  default     = {}
}
