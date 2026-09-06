admission_controller_options = { "PodSecurityPolicy" : false }

allow_node_port_access = false

allow_worker_internet_access = true

allow_worker_ssh_access = false

api_fingerprint = ""

api_private_key = ""

api_private_key_password = ""

api_private_key_path = ""

availability_domains = { "bastion" : 1, "fss" : 1, "operator" : 1 }

bastion_access = ["anywhere"]

bastion_image_id = "Autonomous"

bastion_notification_endpoint = "none"

bastion_notification_protocol = "EMAIL"

bastion_notification_topic = "bastion"

bastion_os_version = "7.9"

bastion_service_access = ["0.0.0.0/0"]

bastion_service_name = ""

bastion_service_target_subnet = "operator"

bastion_shape = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }

bastion_state = "RUNNING"

bastion_timezone = "Etc/UTC"

bastion_type = "public"

calico_version = "3.19"

check_node_active = "none"

cluster_kms_key_id = ""

cluster_name = "oke"

compartment_id = ""

control_plane_allowed_cidrs = []

control_plane_nsgs = []

control_plane_type = "public"

create_bastion_host = true

create_bastion_service = false

create_drg = false

create_fss = false

create_operator = true

create_service_account = false

dashboard_enabled = false

debug_mode = false

drg_display_name = "drg"

email_address = "none"

enable_bastion_notification = false

enable_calico = false

enable_gatekeeper = false

enable_metric_server = false

enable_operator_instance_principal = true

enable_operator_notification = false

enable_operator_pv_encryption_in_transit = false

enable_pv_encryption_in_transit = false

enable_vpa = false

enable_waf = false

freeform_tags = { "bastion" : { "environment" : "dev", "role" : "bastion" }, "oke" : { "service_lb" : { "environment" : "dev", "role" : "load balancer" } }, "operator" : { "environment" : "dev", "role" : "operator" }, "vcn" : { "environment" : "dev" } }

fss_mount_path = "/oke_fss"

gatekeeeper_version = "3.7"

home_region = ""

image_signing_keys = []

internal_lb_allowed_cidrs = ["0.0.0.0/0"]

internal_lb_allowed_ports = [80, 443]

internet_gateway_route_rules = ""

kubernetes_version = "v1.21.5"

label_prefix = "none"

load_balancers = "public"

local_peering_gateways = ""

lockdown_default_seclist = true

max_fs_stat_bytes = 23843202333

max_fs_stat_files = 223442

nat_gateway_public_ip_id = "none"

nat_gateway_route_rules = ""

node_pool_image_id = "none"

node_pool_name_prefix = "np"

node_pool_os = "Oracle Linux"

node_pool_os_version = "7.9"

node_pool_timezone = "Etc/UTC"

node_pool_volume_kms_key_id = ""

node_pools = { "np1" : { "boot_volume_size" : 150, "label" : { "app" : "frontend", "pool" : "np1" }, "memory" : 16, "node_pool_size" : 1, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }, "np2" : { "boot_volume_size" : 150, "node_pool_size" : 2, "shape" : "VM.Standard.E2.2" }, "np3" : { "node_pool_size" : 1, "shape" : "VM.Standard.E2.2" } }

node_pools_to_drain = ["none"]

nodepool_upgrade_method = "out_of_place"

operator_image_id = "Oracle"

operator_notification_endpoint = "none"

operator_notification_protocol = "EMAIL"

operator_notification_topic = "operator"

operator_nsg_ids = []

operator_os_version = "8"

operator_shape = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }

operator_state = "RUNNING"

operator_timezone = "Etc/UTC"

operator_volume_kms_id = ""

pods_cidr = "10.244.0.0/16"

preferred_load_balancer = "public"

public_lb_allowed_cidrs = ["0.0.0.0/0"]

public_lb_allowed_ports = [443]

region = ""

secret_id = "none"

secret_name = "ocirsecret"

secret_namespace = "default"

service_account_cluster_role_binding = "cluster-admin"

service_account_name = "kubeconfigsa"

service_account_namespace = "kube-system"

services_cidr = "10.96.0.0/16"

ssh_private_key = ""

ssh_private_key_path = "none"

ssh_public_key = ""

ssh_public_key_path = "none"

subnets = { "bastion" : { "netnum" : 0, "newbits" : 13 }, "cp" : { "netnum" : 2, "newbits" : 13 }, "int_lb" : { "netnum" : 16, "newbits" : 11 }, "operator" : { "netnum" : 1, "newbits" : 13 }, "pub_lb" : { "netnum" : 17, "newbits" : 11 }, "workers" : { "netnum" : 1, "newbits" : 2 } }

tenancy_id = ""

upgrade_bastion = true

upgrade_nodepool = false

upgrade_operator = true

use_cluster_encryption = false

use_node_pool_volume_encryption = false

use_signed_images = false

user_id = ""

username = "none"

vcn_cidrs = ["10.0.0.0/16"]

vcn_dns_label = "oke"

vcn_name = "oke-vcn"

vpa_version = "0.8"

worker_nsgs = []

worker_type = "private"
