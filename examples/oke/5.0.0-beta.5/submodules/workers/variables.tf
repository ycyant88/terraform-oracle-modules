variable "ad_numbers" {
  description = ""
  type        = list(number)
  default     = ""
}

variable "ad_numbers_to_names" {
  description = ""
  type        = map(string)
  default     = ""
}

variable "apiserver_private_host" {
  description = ""
  type        = string
  default     = ""
}

variable "assign_dns" {
  description = ""
  type        = bool
  default     = ""
}

variable "assign_public_ip" {
  description = ""
  type        = bool
  default     = ""
}

variable "block_volume_type" {
  description = "Default block volume attachment type for Instance Configurations when unspecified on a pool."
  type        = string
  default     = "paravirtualized"
}

variable "capacity_reservation_id" {
  description = "The ID of the Compute capacity reservation the worker node will be launched under. See <a href=https://docs.oracle.com/en-us/iaas/Content/Compute/Tasks/reserve-capacity.htm>Capacity Reservations</a> for more information."
  type        = string
  default     = null
}

variable "cloud_init" {
  description = "List of maps containing cloud init MIME part configuration for worker nodes. Merged with pool-specific definitions. See https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/cloudinit_config.html#part for expected schema of each element."
  type        = list(map(string))
  default     = []
}

variable "cluster_ca_cert" {
  description = "Base64+PEM-encoded cluster CA certificate for unmanaged instance pools. Determined automatically when 'create_cluster' = true or 'cluster_id' is provided."
  type        = string
  default     = null
}

variable "cluster_dns" {
  description = "Cluster DNS resolver IP address. Determined automatically when not set (recommended)."
  type        = string
  default     = null
}

variable "cluster_id" {
  description = "An existing OKE cluster OCID when create_cluster = false."
  type        = string
  default     = null
}

variable "cni_type" {
  description = "The CNI for the cluster: 'flannel' or 'npn'. See <a href=https://docs.oracle.com/en-us/iaas/Content/ContEng/Concepts/contengpodnetworking.htm>Pod Networking</a>."
  type        = string
  default     = "flannel"
}

variable "compartment_id" {
  description = "The compartment id where resources will be created."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "Defined tags to be applied to created resources. Must already exist in the tenancy."
  type        = map(string)
  default     = {}
}

variable "disable_default_cloud_init" {
  description = "Whether to disable the default OKE cloud init and only use the cloud init explicitly passed to the worker pool in 'worker_cloud_init'."
  type        = bool
  default     = false
}

variable "freeform_tags" {
  description = "Freeform tags to be applied to created resources."
  type        = map(string)
  default     = {}
}

variable "image_id" {
  description = "Default image for worker pools  when unspecified on a pool."
  type        = string
  default     = null
}

variable "image_ids" {
  description = "Map of images for filtering with image_os and image_os_version."
  type        = any
  default     = {}
}

variable "image_os" {
  description = "Default worker image operating system name when worker_image_type = 'oke' or 'platform' and unspecified on a pool."
  type        = string
  default     = "Oracle Linux"
}

variable "image_os_version" {
  description = "Default worker image operating system version when worker_image_type = 'oke' or 'platform' and unspecified on a pool."
  type        = string
  default     = "8"
}

variable "image_type" {
  description = "Whether to use a platform, OKE, or custom image for worker nodes by default when unspecified on a pool. When custom is set, the worker_image_id must be specified."
  type        = string
  default     = "oke"
}

variable "kubeproxy_mode" {
  description = "The mode in which to run kube-proxy when unspecified on a pool."
  type        = string
  default     = "iptables"
}

variable "kubernetes_version" {
  description = "The version of Kubernetes used for worker nodes."
  type        = string
  default     = "v1.26.2"
}

variable "max_pods_per_node" {
  description = "The default maximum number of pods to deploy per node when unspecified on a pool. Absolute maximum is 110. Ignored when when cni_type != 'npn'."
  type        = number
  default     = 31
}

variable "node_labels" {
  description = "Default worker node labels. Merged with labels defined on each pool."
  type        = map(string)
  default     = {}
}

variable "node_metadata" {
  description = "Map of additional worker node instance metadata. Merged with metadata defined on each pool."
  type        = map(string)
  default     = {}
}

variable "platform_config" {
  description = "Default platform_config for self-managed worker pools created with mode: 'instance', 'instance-pool', or 'cluster-network'. See <a href=https://docs.oracle.com/en-us/iaas/api/#/en/iaas/20160918/datatypes/PlatformConfig>PlatformConfig</a> for more information."
  type = object({
    type                                           = optional(string),
    are_virtual_instructions_enabled               = optional(bool),
    is_access_control_service_enabled              = optional(bool),
    is_input_output_memory_management_unit_enabled = optional(bool),
    is_measured_boot_enabled                       = optional(bool),
    is_memory_encryption_enabled                   = optional(bool),
    is_secure_boot_enabled                         = optional(bool),
    is_symmetric_multi_threading_enabled           = optional(bool),
    is_trusted_platform_module_enabled             = optional(bool),
    numa_nodes_per_socket                          = optional(number),
    percentage_of_cores_enabled                    = optional(bool),
  })
  default = null
}

variable "pod_nsg_ids" {
  description = "An additional list of network security group (NSG) IDs for pod security. Combined with 'pod_nsg_ids' specified on each pool."
  type        = list(string)
  default     = []
}

variable "pod_subnet_id" {
  description = ""
  type        = string
  default     = ""
}

variable "preemptible_config" {
  description = "Default preemptible Compute configuration when unspecified on a pool. See <a href=https://docs.oracle.com/en-us/iaas/Content/ContEng/Tasks/contengusingpreemptiblecapacity.htm>Preemptible Worker Nodes</a> for more information."
  type        = map(any)
  default     = { "enable" : false, "is_preserve_boot_volume" : false }
}

variable "pv_transit_encryption" {
  description = "Whether to enable in-transit encryption for the data volume's paravirtualized attachment by default when unspecified on a pool."
  type        = bool
  default     = false
}

variable "shape" {
  description = "Default shape of the created worker instance when unspecified on a pool."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 16, "ocpus" : 2, "shape" : "VM.Standard.E4.Flex" }
}

variable "ssh_public_key" {
  description = "The contents of the SSH public key file. Used to allow login for workers/bastion/operator with corresponding private key."
  type        = string
  default     = null
}

variable "state_id" {
  description = "Optional Terraform state_id from an existing deployment of the module to re-use with created resources."
  type        = string
  default     = null
}

variable "tag_namespace" {
  description = "The tag namespace for standard OKE defined tags."
  type        = string
  default     = "oke"
}

variable "tenancy_id" {
  description = "The tenancy id of the OCI Cloud Account in which to create the resources."
  type        = string
  default     = null
}

variable "timezone" {
  description = ""
  type        = string
  default     = ""
}

variable "use_defined_tags" {
  description = "Whether to apply defined tags to created resources for IAM policy and tracking."
  type        = bool
  default     = false
}

variable "volume_kms_key_id" {
  description = "The ID of the OCI KMS key to be used as the master encryption key for Boot Volume and Block Volume encryption by default when unspecified on a pool."
  type        = string
  default     = null
}

variable "worker_nsg_ids" {
  description = "An additional list of network security group (NSG) IDs for node security. Combined with 'nsg_ids' specified on each pool."
  type        = list(string)
  default     = []
}

variable "worker_pool_mode" {
  description = "Default management mode for workers when unspecified on a pool. Only 'node-pool' is currently supported."
  type        = string
  default     = "node-pool"
}

variable "worker_pool_size" {
  description = "Default size for worker pools when unspecified on a pool."
  type        = number
  default     = 0
}

variable "worker_pools" {
  description = "Tuple of OKE worker pools where each key maps to the OCID of an OCI resource, and value contains its definition."
  type        = any
  default     = {}
}

variable "worker_subnet_id" {
  description = ""
  type        = string
  default     = ""
}
