variable "allow_bastion_cluster_access" {
  description = "Whether to allow access to the Kubernetes cluster endpoint from the bastion host."
  type        = bool
  default     = false
}

variable "allow_node_port_access" {
  description = "Whether to allow access from worker NodePort range to load balancers."
  type        = bool
  default     = false
}

variable "allow_pod_internet_access" {
  description = "Allow pods to egress to internet. Ignored when cni_type != 'npn'."
  type        = bool
  default     = true
}

variable "allow_rules_internal_lb" {
  description = "A map of additional rules to allow incoming traffic for internal load balancers."
  type        = any
  default     = {}
}

variable "allow_rules_public_lb" {
  description = "A map of additional rules to allow incoming traffic for public load balancers."
  type        = any
  default     = {}
}

variable "allow_worker_internet_access" {
  description = "Allow worker nodes to egress to internet. Required if container images are in a registry other than OCIR."
  type        = bool
  default     = true
}

variable "allow_worker_ssh_access" {
  description = "Whether to allow SSH access to worker nodes."
  type        = bool
  default     = false
}

variable "api_fingerprint" {
  description = "Fingerprint of the API private key to use with OCI API."
  type        = string
  default     = null
}

variable "api_private_key" {
  description = "The contents of the private key file to use with OCI API, optionally base64-encoded. This takes precedence over private_key_path if both are specified in the provider."
  type        = string
  default     = null
}

variable "api_private_key_password" {
  description = "The corresponding private key password to use with the api private key if it is encrypted."
  type        = string
  default     = null
}

variable "api_private_key_path" {
  description = "The path to the OCI API private key."
  type        = string
  default     = null
}

variable "assign_dns" {
  description = "Whether to assign DNS records to created instances or disable DNS resolution of hostnames in the VCN."
  type        = bool
  default     = true
}

variable "await_node_readiness" {
  description = "Optionally block completion of Terraform apply until one/all worker nodes become ready."
  type        = string
  default     = "none"
}

variable "bastion_allowed_cidrs" {
  description = "A list of CIDR blocks to allow SSH access to the bastion host. NOTE: Default is empty i.e. no access permitted. Allow access from anywhere with '0.0.0.0/0'."
  type        = list(string)
  default     = []
}

variable "bastion_availability_domain" {
  description = "The availability domain for bastion placement. Defaults to first available."
  type        = string
  default     = null
}

variable "bastion_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "bastion_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "bastion_image_id" {
  description = "Image ID for created bastion instance."
  type        = string
  default     = null
}

variable "bastion_image_os" {
  description = "Bastion image operating system name when bastion_image_type = 'platform'."
  type        = string
  default     = "Oracle Autonomous Linux"
}

variable "bastion_image_os_version" {
  description = "Bastion image operating system version when bastion_image_type = 'platform'."
  type        = string
  default     = "8.7"
}

variable "bastion_image_type" {
  description = "Whether to use a platform or custom image for the created bastion instance. When custom is set, the bastion_image_id must be specified."
  type        = string
  default     = "platform"
}

variable "bastion_is_public" {
  description = "Whether to create allocate a public IP and subnet for the created bastion host."
  type        = bool
  default     = true
}

variable "bastion_nsg_ids" {
  description = "An additional list of network security group (NSG) IDs for bastion security."
  type        = list(string)
  default     = []
}

variable "bastion_public_ip" {
  description = "The IP address of an existing bastion host, if create_bastion = false."
  type        = string
  default     = null
}

variable "bastion_shape" {
  description = "The shape of bastion instance."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }
}

variable "bastion_upgrade" {
  description = "Whether to upgrade bastion packages after provisioning."
  type        = bool
  default     = false
}

variable "bastion_user" {
  description = "User for SSH access through bastion host."
  type        = string
  default     = "opc"
}

variable "calico_apiserver_install" {
  description = "Whether to enable the Calico apiserver."
  type        = bool
  default     = false
}

variable "calico_install" {
  description = "Whether to install calico for network pod security policy. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "calico_mode" {
  description = "The type of Calico manifest to install. The default of 'policy-only' is recommended."
  type        = string
  default     = "policy-only"
}

variable "calico_mtu" {
  description = "Interface MTU for Calico device(s) (0 = auto)."
  type        = number
  default     = 0
}

variable "calico_staging_dir" {
  description = "Directory on the operator instance to stage Calico install files."
  type        = string
  default     = "/tmp/calico_install"
}

variable "calico_typha_install" {
  description = "Whether to enable Typha (automatically enabled for > 50 nodes)."
  type        = bool
  default     = false
}

variable "calico_typha_replicas" {
  description = "The number of replicas for the Typha deployment (0 = auto)."
  type        = number
  default     = 0
}

variable "calico_url" {
  description = "Optionally override the Calico manifest URL (empty string = auto)."
  type        = string
  default     = ""
}

variable "calico_version" {
  description = "The version of Calico to install."
  type        = string
  default     = "3.24.1"
}

variable "cluster_autoscaler_helm_values" {
  description = "Map of individual Helm chart values. See <a href=https://registry.terraform.io/providers/hashicorp/helm/latest/docs/data-sources/template>data.helm_template</a>."
  type        = map(string)
  default     = {}
}

variable "cluster_autoscaler_helm_values_files" {
  description = "Paths to a local YAML files with Helm chart values (as with helm install -f which supports multiple). Generate with defaults using helm show values [CHART] [flags]."
  type        = list(string)
  default     = []
}

variable "cluster_autoscaler_helm_version" {
  description = "Version of the Helm chart to install. List available releases using helm search repo [keyword] --versions."
  type        = string
  default     = "9.24.0"
}

variable "cluster_autoscaler_install" {
  description = "Whether to deploy the Kubernetes Cluster Autoscaler Helm chart. See <a href=https://github.com/kubernetes/autoscaler>kubernetes/autoscaler</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "cluster_autoscaler_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "kube-system"
}

variable "cluster_ca_cert" {
  description = "Base64+PEM-encoded cluster CA certificate for unmanaged instance pools. Determined automatically when 'create_cluster' = true or 'cluster_id' is provided."
  type        = string
  default     = null
}

variable "cluster_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "cluster_dns" {
  description = "Cluster DNS resolver IP address. Determined automatically when not set (recommended)."
  type        = string
  default     = null
}

variable "cluster_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "cluster_id" {
  description = "An existing OKE cluster OCID when create_cluster = false."
  type        = string
  default     = null
}

variable "cluster_kms_key_id" {
  description = "The id of the OCI KMS key to be used as the master encryption key for Kubernetes secrets encryption."
  type        = string
  default     = ""
}

variable "cluster_name" {
  description = "The name of oke cluster."
  type        = string
  default     = null
}

variable "cluster_type" {
  description = "The cluster type. See <a href=https://docs.oracle.com/en-us/iaas/Content/ContEng/Tasks/contengworkingwithenhancedclusters.htm>Working with Enhanced Clusters and Basic Clusters</a> for more information."
  type        = string
  default     = "basic"
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

variable "compartment_ocid" {
  description = "A compartment OCID automatically populated by Resource Manager."
  type        = string
  default     = null
}

variable "config_file_profile" {
  description = "The profile within the OCI config file to use."
  type        = string
  default     = "DEFAULT"
}

variable "control_plane_allowed_cidrs" {
  description = "The list of CIDR blocks from which the control plane can be accessed."
  type        = list(string)
  default     = []
}

variable "control_plane_is_public" {
  description = "Whether the Kubernetes control plane endpoint should be allocated a public IP address to enable access over public internet."
  type        = bool
  default     = false
}

variable "control_plane_nsg_ids" {
  description = "An additional list of network security groups (NSG) ids for the cluster endpoint."
  type        = set(string)
  default     = []
}

variable "create_bastion" {
  description = "Whether to create a bastion host."
  type        = bool
  default     = true
}

variable "create_cluster" {
  description = "Whether to create the OKE cluster and dependent resources."
  type        = bool
  default     = true
}

variable "create_drg" {
  description = "Whether to create a Dynamic Routing Gateway and attach it to the VCN."
  type        = bool
  default     = false
}

variable "create_iam_autoscaler_policy" {
  description = "Whether to create an IAM dynamic group and policy rules for Cluster Autoscaler management. Depends on configuration of associated component when set to 'auto'. Ignored when 'create_iam_resources' is false."
  type        = string
  default     = "auto"
}

variable "create_iam_defined_tags" {
  description = "Whether to create defined tags used for IAM policy and tracking. Ignored when 'create_iam_resources' is false."
  type        = bool
  default     = false
}

variable "create_iam_kms_policy" {
  description = "Whether to create an IAM dynamic group and policy rules for cluster autoscaler. Depends on configuration of associated components when set to 'auto'. Ignored when 'create_iam_resources' is false."
  type        = string
  default     = "auto"
}

variable "create_iam_operator_policy" {
  description = "Whether to create an IAM dynamic group and policy rules for operator access to the OKE control plane. Depends on configuration of associated components when set to 'auto'. Ignored when 'create_iam_resources' is false."
  type        = string
  default     = "auto"
}

variable "create_iam_resources" {
  description = "Whether to create IAM dynamic groups, policies, and tags. Resources for components may be controlled individually with 'create_iam_*' variables when enabled. Ignored when 'create_iam_resources' is false."
  type        = bool
  default     = false
}

variable "create_iam_tag_namespace" {
  description = "Whether to create a namespace for defined tags used for IAM policy and tracking. Ignored when 'create_iam_resources' is false."
  type        = bool
  default     = false
}

variable "create_iam_worker_policy" {
  description = "Whether to create an IAM dynamic group and policy rules for self-managed worker nodes. Depends on configuration of associated components when set to 'auto'. Ignored when 'create_iam_resources' is false."
  type        = string
  default     = "auto"
}

variable "create_operator" {
  description = "Whether to create an operator server in a private subnet."
  type        = bool
  default     = true
}

variable "create_vcn" {
  description = "Whether to create a Virtual Cloud Network."
  type        = bool
  default     = true
}

variable "current_user_ocid" {
  description = "A user OCID automatically populated by Resource Manager."
  type        = string
  default     = null
}

variable "dcgm_exporter_helm_values" {
  description = "Map of individual Helm chart values. See <a href=https://registry.terraform.io/providers/hashicorp/helm/latest/docs/data-sources/template>data.helm_template</a>."
  type        = map(string)
  default     = {}
}

variable "dcgm_exporter_helm_values_files" {
  description = "Paths to a local YAML files with Helm chart values (as with helm install -f which supports multiple). Generate with defaults using helm show values [CHART] [flags]."
  type        = list(string)
  default     = []
}

variable "dcgm_exporter_helm_version" {
  description = "Version of the Helm chart to install. List available releases using helm search repo [keyword] --versions."
  type        = string
  default     = "3.1.5"
}

variable "dcgm_exporter_install" {
  description = "Whether to deploy the DCGM exporter Helm chart. See <a href=https://docs.nvidia.com/datacenter/cloud-native/gpu-telemetry/dcgm-exporter.html>DCGM-Exporter</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "dcgm_exporter_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "metrics"
}

variable "dcgm_exporter_reapply" {
  description = "Whether to force reapply of the Helm chart when no changes are detected, e.g. with state modified externally."
  type        = bool
  default     = false
}

variable "defined_tags" {
  description = "Defined tags to be applied to created resources. Must already exist in the tenancy."
  type        = any
  default     = { "bastion" : {}, "cluster" : {}, "iam" : {}, "network" : {}, "operator" : {}, "persistent_volume" : {}, "service_lb" : {}, "workers" : {} }
}

variable "drg_attachments" {
  description = "DRG attachment configurations."
  type        = any
  default     = {}
}

variable "drg_display_name" {
  description = "(Updatable) Name of the created Dynamic Routing Gateway. Does not have to be unique. Defaults to 'oke' suffixed with the generated Terraform 'state_id' value."
  type        = string
  default     = null
}

variable "drg_id" {
  description = "ID of an external created Dynamic Routing Gateway to be attached to the VCN."
  type        = string
  default     = null
}

variable "enable_waf" {
  description = "Whether to enable WAF monitoring of load balancers."
  type        = bool
  default     = false
}

variable "freeform_tags" {
  description = "Freeform tags to be applied to created resources."
  type        = any
  default     = { "bastion" : {}, "cluster" : {}, "iam" : {}, "network" : {}, "operator" : {}, "persistent_volume" : {}, "service_lb" : {}, "workers" : {} }
}

variable "gatekeeper_helm_values" {
  description = "Map of individual Helm chart values. See <a href=https://registry.terraform.io/providers/hashicorp/helm/latest/docs/data-sources/template>data.helm_template</a>."
  type        = map(string)
  default     = {}
}

variable "gatekeeper_helm_values_files" {
  description = "Paths to a local YAML files with Helm chart values (as with helm install -f which supports multiple). Generate with defaults using helm show values [CHART] [flags]."
  type        = list(string)
  default     = []
}

variable "gatekeeper_helm_version" {
  description = "Version of the Helm chart to install. List available releases using helm search repo [keyword] --versions."
  type        = string
  default     = "3.11.0"
}

variable "gatekeeper_install" {
  description = "Whether to deploy the Gatekeeper Helm chart. See https://github.com/open-policy-agent/gatekeeper. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "gatekeeper_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "kube-system"
}

variable "home_region" {
  description = "The tenancy's home region. Required to perform identity operations."
  type        = string
  default     = null
}

variable "iam_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "iam_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "ig_route_table_id" {
  description = "Optional ID of existing internet gateway in VCN."
  type        = string
  default     = null
}

variable "image_signing_keys" {
  description = "A list of KMS key ids used by the worker nodes to verify signed images. The keys must use RSA algorithm."
  type        = set(string)
  default     = []
}

variable "internet_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to Internet Gateway Route Table."
  type        = list(map(string))
  default     = null
}

variable "kubeproxy_mode" {
  description = "The mode in which to run kube-proxy when unspecified on a pool."
  type        = string
  default     = "iptables"
}

variable "kubernetes_version" {
  description = "The version of kubernetes to use when provisioning OKE or to upgrade an existing OKE cluster to."
  type        = string
  default     = "v1.26.2"
}

variable "load_balancers" {
  description = "The type of subnets to create for load balancers."
  type        = string
  default     = "both"
}

variable "local_peering_gateways" {
  description = "Map of Local Peering Gateways to attach to the VCN."
  type        = map(any)
  default     = null
}

variable "lockdown_default_seclist" {
  description = "Whether to remove all default security rules from the VCN Default Security List."
  type        = bool
  default     = true
}

variable "max_pods_per_node" {
  description = "The default maximum number of pods to deploy per node when unspecified on a pool. Absolute maximum is 110. Ignored when when cni_type != 'npn'."
  type        = number
  default     = 31
}

variable "metrics_server_helm_values" {
  description = "Map of individual Helm chart values. See <a href=https://registry.terraform.io/providers/hashicorp/helm/latest/docs/data-sources/template>data.helm_template</a>."
  type        = map(string)
  default     = {}
}

variable "metrics_server_helm_values_files" {
  description = "Paths to a local YAML files with Helm chart values (as with helm install -f which supports multiple). Generate with defaults using helm show values [CHART] [flags]."
  type        = list(string)
  default     = []
}

variable "metrics_server_helm_version" {
  description = "Version of the Helm chart to install. List available releases using helm search repo [keyword] --versions."
  type        = string
  default     = "3.8.3"
}

variable "metrics_server_install" {
  description = "Whether to deploy the Kubernetes Metrics Server Helm chart. See <a href=https://github.com/kubernetes-sigs/metrics-server>kubernetes-sigs/metrics-server</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "metrics_server_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "metrics"
}

variable "mpi_operator_deployment_url" {
  description = "The URL path to the manifest. Leave unset for tags of <a href=https://github.com/kubeflow/mpi-operator>kubeflow/mpi-operator</a> using mpi_operator_version."
  type        = string
  default     = null
}

variable "mpi_operator_install" {
  description = "Whether to deploy the MPI Operator. See <a href=https://github.com/kubeflow/mpi-operator>kubeflow/mpi-operator</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "mpi_operator_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "default"
}

variable "mpi_operator_version" {
  description = "Version to install. Ignored when an explicit value for mpi_operator_deployment_url is provided."
  type        = string
  default     = "0.4.0"
}

variable "multus_daemonset_url" {
  description = "The URL path to the Multus manifest. Leave unset for tags of <a href=https://github.com/k8snetworkplumbingwg/multus-cni>k8snetworkplumbingwg/multus-cni</a> using multus_version."
  type        = string
  default     = null
}

variable "multus_install" {
  description = "Whether to deploy Multus. See <a href=https://github.com/k8snetworkplumbingwg/multus-cni>k8snetworkplumbingwg/multus-cni</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "multus_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "network"
}

variable "multus_version" {
  description = "Version of Multus to install. Ignored when an explicit value for multus_daemonset_url is provided."
  type        = string
  default     = "3.9.3"
}

variable "nat_gateway_public_ip_id" {
  description = "OCID of reserved IP address for NAT gateway. The reserved public IP address needs to be manually created."
  type        = string
  default     = null
}

variable "nat_gateway_route_rules" {
  description = "(Updatable) List of routing rules to add to NAT Gateway Route Table."
  type        = list(map(string))
  default     = null
}

variable "nat_route_table_id" {
  description = "Optional ID of existing NAT gateway in VCN."
  type        = string
  default     = null
}

variable "network_compartment_id" {
  description = "The compartment id where network resources will be created."
  type        = string
  default     = null
}

variable "network_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "network_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "nsgs" {
  description = "Configuration for standard network security groups (NSGs).  The 'create' parameter of each entry defaults to 'auto', creating NSGs when other enabled components are expected to utilize them, and may be configured with 'never' or 'always' to force disabled/enabled."
  type = map(object({
    create = optional(string, "auto")
    id     = optional(string)
  }))
  default = { "bastion" : {}, "cp" : {}, "int_lb" : {}, "operator" : {}, "pods" : {}, "pub_lb" : {}, "workers" : {} }
}

variable "ocir_email_address" {
  description = "The email address used for the Oracle Container Image Registry (OCIR)."
  type        = string
  default     = null
}

variable "ocir_secret_id" {
  description = "The OCI Vault secret ID for the OCIR authentication token."
  type        = string
  default     = null
}

variable "ocir_secret_name" {
  description = "The name of the Kubernetes secret to be created with the OCIR authentication token."
  type        = string
  default     = "ocirsecret"
}

variable "ocir_secret_namespace" {
  description = "The Kubernetes namespace in which to create the OCIR secret."
  type        = string
  default     = "default"
}

variable "ocir_username" {
  description = "A username with access to the OCI Vault secret for OCIR access. Required when 'ocir_secret_id' is provided."
  type        = string
  default     = null
}

variable "operator_availability_domain" {
  description = "The availability domain for FSS placement. Defaults to first available."
  type        = string
  default     = null
}

variable "operator_cloud_init" {
  description = "List of maps containing cloud init MIME part configuration for operator host. See https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/cloudinit_config.html#part for expected schema of each element."
  type        = list(map(string))
  default     = []
}

variable "operator_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "operator_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "operator_image_id" {
  description = "Image ID for created operator instance."
  type        = string
  default     = null
}

variable "operator_image_os" {
  description = "Operator image operating system name when operator_image_type = 'platform'."
  type        = string
  default     = "Oracle Linux"
}

variable "operator_image_os_version" {
  description = "Operator image operating system version when operator_image_type = 'platform'."
  type        = string
  default     = "8"
}

variable "operator_image_type" {
  description = "Whether to use a platform or custom image for the created operator instance. When custom is set, the operator_image_id must be specified."
  type        = string
  default     = "platform"
}

variable "operator_install_helm" {
  description = "Whether to install Helm on the created operator host."
  type        = bool
  default     = true
}

variable "operator_install_k9s" {
  description = "Whether to install k9s on the created operator host. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "operator_install_kubectx" {
  description = "Whether to install kubectx/kubens on the created operator host. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = true
}

variable "operator_nsg_ids" {
  description = "An optional and updatable list of network security groups that the operator will be part of."
  type        = list(string)
  default     = []
}

variable "operator_private_ip" {
  description = "The IP address of an existing operator host. Ignored when create_operator = true."
  type        = string
  default     = null
}

variable "operator_pv_transit_encryption" {
  description = "Whether to enable in-transit encryption for the data volume's paravirtualized attachment."
  type        = bool
  default     = false
}

variable "operator_shape" {
  description = "Shape of the created operator instance."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }
}

variable "operator_upgrade" {
  description = "Whether to upgrade operator packages after provisioning."
  type        = bool
  default     = false
}

variable "operator_user" {
  description = "User for SSH access to operator host."
  type        = string
  default     = "opc"
}

variable "operator_volume_kms_key_id" {
  description = "The OCID of the OCI KMS key to assign as the master encryption key for the boot volume."
  type        = string
  default     = null
}

variable "output_detail" {
  description = "Whether to include detailed output in state."
  type        = bool
  default     = false
}

variable "persistent_volume_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "persistent_volume_freeform_tags" {
  description = "Freeform tags applied to created resources."
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

variable "pods_cidr" {
  description = "The CIDR range used for IP addresses by the pods. A /16 CIDR is generally sufficient. This CIDR should not overlap with any subnet range in the VCN (it can also be outside the VCN CIDR range). Ignored when cni_type = 'npn'."
  type        = string
  default     = "10.244.0.0/16"
}

variable "preferred_load_balancer" {
  description = "The preferred load balancer subnets that OKE will automatically choose when creating a load balancer. Valid values are 'public' or 'internal'. If 'public' is chosen, the value for load_balancers must be either 'public' or 'both'. If 'private' is chosen, the value for load_balancers must be either 'internal' or 'both'. NOTE: Service annotations for internal load balancers must still be specified regardless of this setting. See <a href=https://github.com/oracle/oci-cloud-controller-manager/blob/master/docs/load-balancer-annotations.md>Load Balancer Annotations</a> for more information."
  type        = string
  default     = "public"
}

variable "prometheus_helm_values" {
  description = "Map of individual Helm chart values. See <a href=https://registry.terraform.io/providers/hashicorp/helm/latest/docs/data-sources/template>data.helm_template</a>."
  type        = map(string)
  default     = {}
}

variable "prometheus_helm_values_files" {
  description = "Paths to a local YAML files with Helm chart values (as with helm install -f which supports multiple). Generate with defaults using helm show values [CHART] [flags]."
  type        = list(string)
  default     = []
}

variable "prometheus_helm_version" {
  description = "Version of the Helm chart to install. List available releases using helm search repo [keyword] --versions."
  type        = string
  default     = "45.2.0"
}

variable "prometheus_install" {
  description = "Whether to deploy the Prometheus Helm chart. See https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "prometheus_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "metrics"
}

variable "prometheus_reapply" {
  description = "Whether to force reapply of the Prometheus Helm chart when no changes are detected, e.g. with state modified externally."
  type        = bool
  default     = false
}

variable "rdma_cni_plugin_daemonset_url" {
  description = "The URL path to the manifest. Leave unset for tags of <a href=https://github.com/openshift/sriov-cni</a> using rdma_cni_plugin_version."
  type        = string
  default     = null
}

variable "rdma_cni_plugin_install" {
  description = "Whether to deploy the SR-IOV CNI Plugin. See <a href=https://github.com/openshift/sriov-cni</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "rdma_cni_plugin_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "network"
}

variable "rdma_cni_plugin_version" {
  description = "Version to install. Ignored when an explicit value for rdma_cni_plugin_daemonset_url is provided."
  type        = string
  default     = "master"
}

variable "region" {
  description = "The OCI region where OKE resources will be created."
  type        = string
  default     = "us-ashburn-1"
}

variable "service_lb_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "service_lb_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "services_cidr" {
  description = "The CIDR range used within the cluster by Kubernetes services (ClusterIPs). This CIDR should not overlap with the VCN CIDR range."
  type        = string
  default     = "10.96.0.0/16"
}

variable "sriov_cni_plugin_daemonset_url" {
  description = "The URL path to the manifest. Leave unset for tags of <a href=https://github.com/openshift/sriov-cni</a> using sriov_cni_plugin_version."
  type        = string
  default     = null
}

variable "sriov_cni_plugin_install" {
  description = "Whether to deploy the SR-IOV CNI Plugin. See <a href=https://github.com/openshift/sriov-cni</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "sriov_cni_plugin_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "network"
}

variable "sriov_cni_plugin_version" {
  description = "Version to install. Ignored when an explicit value for sriov_cni_plugin_daemonset_url is provided."
  type        = string
  default     = "master"
}

variable "sriov_device_plugin_daemonset_url" {
  description = "The URL path to the manifest. Leave unset for tags of <a href=https://github.com/k8snetworkplumbingwg/sriov-network-device-plugin>k8snetworkplumbingwg/sriov-network-device-plugin</a> using sriov_device_plugin_version."
  type        = string
  default     = null
}

variable "sriov_device_plugin_install" {
  description = "Whether to deploy the SR-IOV Network Device Plugin. See <a href=https://github.com/k8snetworkplumbingwg/sriov-network-device-plugin>k8snetworkplumbingwg/sriov-network-device-plugin</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "sriov_device_plugin_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "network"
}

variable "sriov_device_plugin_version" {
  description = "Version to install. Ignored when an explicit value for sriov_device_plugin_daemonset_url is provided."
  type        = string
  default     = "master"
}

variable "ssh_private_key" {
  description = "The contents of the SSH private key file, optionally base64-encoded. May be provided via SSH agent when unset."
  type        = string
  default     = null
}

variable "ssh_private_key_path" {
  description = "A path on the local filesystem to the SSH private key. May be provided via SSH agent when unset."
  type        = string
  default     = null
}

variable "ssh_public_key" {
  description = "The contents of the SSH public key file, optionally base64-encoded. Used to allow login for workers/bastion/operator with corresponding private key."
  type        = string
  default     = null
}

variable "ssh_public_key_path" {
  description = "A path on the local filesystem to the SSH public key. Used to allow login for workers/bastion/operator with corresponding private key."
  type        = string
  default     = null
}

variable "state_id" {
  description = "Optional Terraform state_id from an existing deployment of the module to re-use with created resources."
  type        = string
  default     = null
}

variable "subnets" {
  description = "Configuration for standard subnets. The 'create' parameter of each entry defaults to 'auto', creating subnets when other enabled components are expected to utilize them, and may be configured with 'never' or 'always' to force disabled/enabled."
  type = map(object({
    create    = optional(string, "auto")
    id        = optional(string)
    newbits   = optional(string)
    netnum    = optional(string)
    cidr      = optional(string)
    dns_label = optional(string)
  }))
  default = { "bastion" : { "newbits" : 13 }, "cp" : { "newbits" : 13 }, "int_lb" : { "newbits" : 11 }, "operator" : { "newbits" : 13 }, "pods" : { "newbits" : 2 }, "pub_lb" : { "newbits" : 11 }, "workers" : { "newbits" : 4 } }
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

variable "tenancy_ocid" {
  description = "A tenancy OCID automatically populated by Resource Manager."
  type        = string
  default     = null
}

variable "timezone" {
  description = "The preferred timezone for workers, operator, and bastion instances."
  type        = string
  default     = "Etc/UTC"
}

variable "use_defined_tags" {
  description = "Whether to apply defined tags to created resources for IAM policy and tracking."
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
  default     = null
}

variable "vcn_cidrs" {
  description = "The list of IPv4 CIDR blocks the VCN will use."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "vcn_create_internet_gateway" {
  description = "Whether to create an internet gateway with the VCN. Defaults to automatic creation when public network resources are expected to utilize it."
  type        = string
  default     = "auto"
}

variable "vcn_create_nat_gateway" {
  description = "Whether to create a NAT gateway with the VCN. Defaults to automatic creation when private network resources are expected to utilize it."
  type        = string
  default     = "auto"
}

variable "vcn_create_service_gateway" {
  description = "Whether to create a service gateway with the VCN. Defaults to always created."
  type        = string
  default     = "always"
}

variable "vcn_dns_label" {
  description = "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet. Defaults to the generated Terraform 'state_id' value."
  type        = string
  default     = null
}

variable "vcn_id" {
  description = "Optional ID of existing VCN. Takes priority over vcn_name filter. Ignored when create_vcn = true."
  type        = string
  default     = null
}

variable "vcn_name" {
  description = "Display name for the created VCN. Defaults to 'oke' suffixed with the generated Terraform 'state_id' value."
  type        = string
  default     = null
}

variable "whereabouts_daemonset_url" {
  description = "The URL path to the manifest. Leave unset for tags of <a href=https://github.com/k8snetworkplumbingwg/whereabouts>k8snetworkplumbingwg/whereabouts</a> using whereabouts_version."
  type        = string
  default     = null
}

variable "whereabouts_install" {
  description = "Whether to deploy the MPI Operator. See <a href=https://github.com/k8snetworkplumbingwg/whereabouts>k8snetworkplumbingwg/whereabouts</a>. NOTE: Provided only as a convenience and not supported by or sourced from Oracle - use at your own risk."
  type        = bool
  default     = false
}

variable "whereabouts_namespace" {
  description = "Kubernetes namespace for deployed resources."
  type        = string
  default     = "default"
}

variable "whereabouts_version" {
  description = "Version to install. Ignored when an explicit value for whereabouts_daemonset_url is provided."
  type        = string
  default     = "master"
}

variable "worker_block_volume_type" {
  description = "Default block volume attachment type for Instance Configurations when unspecified on a pool."
  type        = string
  default     = "paravirtualized"
}

variable "worker_capacity_reservation_id" {
  description = "The ID of the Compute capacity reservation the worker node will be launched under. See <a href=https://docs.oracle.com/en-us/iaas/Content/Compute/Tasks/reserve-capacity.htm>Capacity Reservations</a> for more information."
  type        = string
  default     = null
}

variable "worker_cloud_init" {
  description = "List of maps containing cloud init MIME part configuration for worker nodes. Merged with pool-specific definitions. See https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/cloudinit_config.html#part for expected schema of each element."
  type        = list(map(string))
  default     = []
}

variable "worker_compartment_id" {
  description = "The compartment id where worker group resources will be created."
  type        = string
  default     = null
}

variable "worker_disable_default_cloud_init" {
  description = "Whether to disable the default OKE cloud init and only use the cloud init explicitly passed to the worker pool in 'worker_cloud_init'."
  type        = bool
  default     = false
}

variable "worker_drain_delete_local_data" {
  description = "Whether to accept removal of data stored locally on draining worker pools. See <a href=https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#drain>kubectl drain</a> for more information."
  type        = bool
  default     = true
}

variable "worker_drain_ignore_daemonsets" {
  description = "Whether to ignore DaemonSet-managed Pods when draining worker pools. See <a href=https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#drain>kubectl drain</a> for more information."
  type        = bool
  default     = true
}

variable "worker_drain_timeout_seconds" {
  description = "The length of time to wait before giving up on draining nodes in a pool. See <a href=https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#drain>kubectl drain</a> for more information."
  type        = number
  default     = 900
}

variable "worker_image_id" {
  description = "Default image for worker pools  when unspecified on a pool."
  type        = string
  default     = null
}

variable "worker_image_os" {
  description = "Default worker image operating system name when worker_image_type = 'oke' or 'platform' and unspecified on a pool."
  type        = string
  default     = "Oracle Linux"
}

variable "worker_image_os_version" {
  description = "Default worker image operating system version when worker_image_type = 'oke' or 'platform' and unspecified on a pool."
  type        = string
  default     = "8"
}

variable "worker_image_type" {
  description = "Whether to use a platform, OKE, or custom image for worker nodes by default when unspecified on a pool. When custom is set, the worker_image_id must be specified."
  type        = string
  default     = "oke"
}

variable "worker_is_public" {
  description = "Whether to provision workers with public IPs allocated by default when unspecified on a pool."
  type        = bool
  default     = false
}

variable "worker_node_labels" {
  description = "Default worker node labels. Merged with labels defined on each pool."
  type        = map(string)
  default     = {}
}

variable "worker_node_metadata" {
  description = "Map of additional worker node instance metadata. Merged with metadata defined on each pool."
  type        = map(string)
  default     = {}
}

variable "worker_nsg_ids" {
  description = "An additional list of network security group (NSG) IDs for node security. Combined with 'nsg_ids' specified on each pool."
  type        = list(string)
  default     = []
}

variable "worker_pool_mode" {
  description = "Default management mode for workers when unspecified on a pool."
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

variable "worker_preemptible_config" {
  description = "Default preemptible Compute configuration when unspecified on a pool. See <a href=https://docs.oracle.com/en-us/iaas/Content/ContEng/Tasks/contengusingpreemptiblecapacity.htm>Preemptible Worker Nodes</a> for more information."
  type        = map(any)
  default     = { "enable" : false, "is_preserve_boot_volume" : false }
}

variable "worker_pv_transit_encryption" {
  description = "Whether to enable in-transit encryption for the data volume's paravirtualized attachment by default when unspecified on a pool."
  type        = bool
  default     = false
}

variable "worker_shape" {
  description = "Default shape of the created worker instance when unspecified on a pool."
  type        = map(any)
  default     = { "boot_volume_size" : 50, "memory" : 16, "ocpus" : 2, "shape" : "VM.Standard.E4.Flex" }
}

variable "worker_volume_kms_key_id" {
  description = "The ID of the OCI KMS key to be used as the master encryption key for Boot Volume and Block Volume encryption by default when unspecified on a pool."
  type        = string
  default     = null
}

variable "workers_defined_tags" {
  description = "Defined tags applied to created resources."
  type        = map(string)
  default     = {}
}

variable "workers_freeform_tags" {
  description = "Freeform tags applied to created resources."
  type        = map(string)
  default     = {}
}
