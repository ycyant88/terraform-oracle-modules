allow_bastion_cluster_access = false

allow_node_port_access = false

allow_pod_internet_access = true

allow_rules_internal_lb = {}

allow_rules_public_lb = {}

allow_worker_internet_access = true

allow_worker_ssh_access = false

api_fingerprint = null

api_private_key = null

api_private_key_password = null

api_private_key_path = null

assign_dns = true

await_node_readiness = "none"

bastion_allowed_cidrs = []

bastion_availability_domain = null

bastion_defined_tags = {}

bastion_freeform_tags = {}

bastion_image_id = null

bastion_image_os = "Oracle Autonomous Linux"

bastion_image_os_version = "8.7"

bastion_image_type = "platform"

bastion_is_public = true

bastion_nsg_ids = []

bastion_public_ip = null

bastion_shape = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }

bastion_upgrade = false

bastion_user = "opc"

calico_apiserver_install = false

calico_install = false

calico_mode = "policy-only"

calico_mtu = 0

calico_staging_dir = "/tmp/calico_install"

calico_typha_install = false

calico_typha_replicas = 0

calico_url = ""

calico_version = "3.24.1"

cluster_autoscaler_helm_values = {}

cluster_autoscaler_helm_values_files = []

cluster_autoscaler_helm_version = "9.24.0"

cluster_autoscaler_install = false

cluster_autoscaler_namespace = "kube-system"

cluster_ca_cert = null

cluster_defined_tags = {}

cluster_dns = null

cluster_freeform_tags = {}

cluster_id = null

cluster_kms_key_id = ""

cluster_name = null

cluster_type = "basic"

cni_type = "flannel"

compartment_id = null

compartment_ocid = null

config_file_profile = "DEFAULT"

control_plane_allowed_cidrs = []

control_plane_is_public = false

control_plane_nsg_ids = []

create_bastion = true

create_cluster = true

create_drg = false

create_iam_autoscaler_policy = "auto"

create_iam_defined_tags = false

create_iam_kms_policy = "auto"

create_iam_operator_policy = "auto"

create_iam_resources = false

create_iam_tag_namespace = false

create_iam_worker_policy = "auto"

create_operator = true

create_vcn = true

current_user_ocid = null

defined_tags = { "bastion" : {}, "cluster" : {}, "iam" : {}, "network" : {}, "operator" : {}, "persistent_volume" : {}, "service_lb" : {}, "workers" : {} }

drg_attachments = {}

drg_display_name = null

drg_id = null

enable_waf = false

freeform_tags = { "bastion" : {}, "cluster" : {}, "iam" : {}, "network" : {}, "operator" : {}, "persistent_volume" : {}, "service_lb" : {}, "workers" : {} }

gatekeeper_helm_values = {}

gatekeeper_helm_values_files = []

gatekeeper_helm_version = "3.11.0"

gatekeeper_install = false

gatekeeper_namespace = "kube-system"

home_region = null

iam_defined_tags = {}

iam_freeform_tags = {}

ig_route_table_id = null

image_signing_keys = []

internet_gateway_route_rules = null

kubeproxy_mode = "iptables"

kubernetes_version = "v1.26.2"

load_balancers = "both"

local_peering_gateways = null

lockdown_default_seclist = true

max_pods_per_node = 31

metrics_server_helm_values = {}

metrics_server_helm_values_files = []

metrics_server_helm_version = "3.8.3"

metrics_server_install = false

metrics_server_namespace = "metrics"

multus_daemonset_url = null

multus_install = false

multus_namespace = "network"

multus_version = "3.9.3"

nat_gateway_public_ip_id = null

nat_gateway_route_rules = null

nat_route_table_id = null

network_compartment_id = null

network_defined_tags = {}

network_freeform_tags = {}

nsgs = { "bastion" : {}, "cp" : {}, "int_lb" : {}, "operator" : {}, "pods" : {}, "pub_lb" : {}, "workers" : {} }

ocir_email_address = null

ocir_secret_id = null

ocir_secret_name = "ocirsecret"

ocir_secret_namespace = "default"

ocir_username = null

operator_availability_domain = null

operator_cloud_init = []

operator_defined_tags = {}

operator_freeform_tags = {}

operator_image_id = null

operator_image_os = "Oracle Linux"

operator_image_os_version = "8"

operator_image_type = "platform"

operator_install_helm = true

operator_install_k9s = false

operator_install_kubectx = true

operator_nsg_ids = []

operator_private_ip = null

operator_pv_transit_encryption = false

operator_shape = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }

operator_upgrade = false

operator_user = "opc"

operator_volume_kms_key_id = null

output_detail = false

persistent_volume_defined_tags = {}

persistent_volume_freeform_tags = {}

platform_config = null

pod_nsg_ids = []

pods_cidr = "10.244.0.0/16"

preferred_load_balancer = "public"

prometheus_helm_values = {}

prometheus_helm_values_files = []

prometheus_helm_version = "45.2.0"

prometheus_install = false

prometheus_namespace = "metrics"

prometheus_reapply = false

region = "us-ashburn-1"

service_lb_defined_tags = {}

service_lb_freeform_tags = {}

services_cidr = "10.96.0.0/16"

ssh_private_key = null

ssh_private_key_path = null

ssh_public_key = null

ssh_public_key_path = null

state_id = null

subnets = { "bastion" : { "newbits" : 13 }, "cp" : { "newbits" : 13 }, "int_lb" : { "newbits" : 11 }, "operator" : { "newbits" : 13 }, "pods" : { "newbits" : 2 }, "pub_lb" : { "newbits" : 11 }, "workers" : { "newbits" : 4 } }

tag_namespace = "oke"

tenancy_id = null

tenancy_ocid = null

timezone = "Etc/UTC"

use_defined_tags = false

use_signed_images = false

user_id = null

vcn_cidrs = ["10.0.0.0/16"]

vcn_create_internet_gateway = "auto"

vcn_create_nat_gateway = "auto"

vcn_create_service_gateway = "always"

vcn_dns_label = null

vcn_id = null

vcn_name = null

worker_block_volume_type = "paravirtualized"

worker_capacity_reservation_id = null

worker_cloud_init = []

worker_compartment_id = null

worker_disable_default_cloud_init = false

worker_image_id = null

worker_image_os = "Oracle Linux"

worker_image_os_version = "8"

worker_image_type = "oke"

worker_is_public = false

worker_node_labels = {}

worker_node_metadata = {}

worker_nsg_ids = []

worker_pool_mode = "node-pool"

worker_pool_size = 0

worker_pools = {}

worker_preemptible_config = { "enable" : false, "is_preserve_boot_volume" : false }

worker_pv_transit_encryption = false

worker_shape = { "boot_volume_size" : 50, "memory" : 16, "ocpus" : 2, "shape" : "VM.Standard.E4.Flex" }

worker_volume_kms_key_id = null

workers_defined_tags = {}

workers_freeform_tags = {}
