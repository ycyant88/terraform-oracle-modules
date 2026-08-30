admission_controller_options = { "PodSecurityPolicy" : false }

allow_node_port_access = false

allow_worker_ssh_access = false

api_fingerprint = ""

api_private_key_path = ""

availability_domains = { "bastion" : 1, "operator" : 1 }

bastion_access = "ANYWHERE"

bastion_enabled = true

bastion_image_id = "Autonomous"

bastion_notification_enabled = false

bastion_notification_endpoint = "none"

bastion_notification_protocol = "EMAIL"

bastion_notification_topic = "bastion"

bastion_package_upgrade = true

bastion_shape = "VM.Standard.E2.1"

bastion_timezone = "Australia/Sydney"

calico_enabled = false

calico_version = "3.12"

check_node_active = "none"

cluster_name = "oke"

compartment_id = ""

create_service_account = false

dashboard_enabled = false

email_address = "none"

existing_key_id = ""

helm_enabled = false

helm_version = "3.2.4"

kubernetes_version = "LATEST"

label_prefix = "none"

lb_subnet_type = "public"

metricserver_enabled = false

nat_gateway_enabled = true

netnum = { "bastion" : 32, "int_lb" : 16, "operator" : 33, "pub_lb" : 17, "workers" : 1 }

newbits = { "bastion" : 13, "lb" : 11, "operator" : 13, "workers" : 2 }

node_pool_image_id = "none"

node_pool_name_prefix = "np"

node_pool_os = "Oracle Linux"

node_pool_os_version = "7.8"

node_pools = { "np1" : ["VM.Standard.E2.2", 1], "np2" : ["VM.Standard2.8", 2], "np3" : ["VM.Standard.E2.2", 1] }

node_pools_to_drain = ["none"]

nodepool_drain = false

nodepool_upgrade_method = "out_of_place"

ocir_urls = { "ap-chuncheon-1" : "yny.ocir.io", "ap-hyderabad-1" : "hyd.ocir.io", "ap-melbourne-1" : "mel.ocir.io", "ap-mumbai-1" : "bom.ocir.io", "ap-osaka-1" : "kix.ocir.io", "ap-seoul-1" : "icn.ocir.io", "ap-sydney-1" : "syd.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-montreal-1" : "yul.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-amsterdam-1" : "ams.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "eu-zurich-1" : "zrh.ocir.io", "me-jeddah-1" : "jed.ocir.io", "sa-saopaulo-1" : "gru.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }

operator_enabled = true

operator_image_id = "Oracle"

operator_instance_principal = true

operator_notification_enabled = false

operator_notification_endpoint = "none"

operator_notification_protocol = "EMAIL"

operator_notification_topic = "operator"

operator_package_upgrade = true

operator_shape = "VM.Standard.E2.1"

operator_timezone = "Australia/Sydney"

pods_cidr = "10.244.0.0/16"

preferred_lb_subnets = "public"

region = ""

secret_id = "none"

service_account_cluster_role_binding = ""

service_account_name = "kubeconfigsa"

service_account_namespace = "kube-system"

services_cidr = "10.96.0.0/16"

ssh_private_key_path = "none"

ssh_public_key_path = "none"

tags = { "bastion" : { "environment" : "dev", "role" : "bastion" }, "operator" : { "environment" : "dev", "role" : "operator" }, "vcn" : { "environment" : "dev" } }

tenancy_id = ""

tenancy_name = "none"

use_encryption = false

user_id = ""

username = "none"

vcn_cidr = "10.0.0.0/16"

vcn_dns_label = "oke"

vcn_name = "oke-vcn"

waf_enabled = false

worker_mode = "private"
