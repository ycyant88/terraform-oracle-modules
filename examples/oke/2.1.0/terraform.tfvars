admin_enabled = true

admin_image_id = "Oracle"

admin_instance_principal = true

admin_notification_enabled = false

admin_notification_endpoint = ""

admin_notification_protocol = "EMAIL"

admin_notification_topic = "admin"

admin_package_upgrade = true

admin_shape = "VM.Standard.E2.1"

admin_timezone = "Australia/Sydney"

allow_node_port_access = false

allow_worker_ssh_access = false

api_fingerprint = ""

api_private_key_path = ""

availability_domains = { "admin" : 1, "bastion" : 1 }

bastion_access = "ANYWHERE"

bastion_enabled = true

bastion_image_id = "Autonomous"

bastion_notification_enabled = true

bastion_notification_endpoint = ""

bastion_notification_protocol = "EMAIL"

bastion_notification_topic = "bastion"

bastion_package_upgrade = true

bastion_shape = "VM.Standard.E2.1"

bastion_timezone = "Australia/Sydney"

calico_version = "3.9"

cluster_name = "oke"

compartment_id = ""

create_auth_token = false

create_service_account = false

dashboard_enabled = false

disable_auto_retries = true

email_address = ""

existing_key_id = ""

existing_vault_id = ""

helm_version = "3.0.0"

install_calico = false

install_helm = false

install_metricserver = false

kubernetes_version = "LATEST"

label_prefix = "oke"

lb_subnet_type = "public"

nat_gateway_enabled = true

netnum = { "admin" : 33, "bastion" : 32, "int_lb" : 16, "pub_lb" : 17, "workers" : 1 }

newbits = { "admin" : 13, "bastion" : 13, "lb" : 11, "workers" : 2 }

node_pool_image_id = "NONE"

node_pool_name_prefix = "np"

node_pool_os = "Oracle Linux"

node_pool_os_version = "7.7"

node_pools = ""

ocir_urls = { "ap-mumbai-1" : "bom.ocir.io", "ap-seoul-1" : "icn.ocir.io", "ap-sydney-1" : "syd.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "eu-zurich-1" : "zrh.ocir.io", "sa-saopaulo-1" : "gru.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }

pods_cidr = "10.244.0.0/16"

preferred_lb_subnets = "public"

region = "us-phoenix-1"

service_account_cluster_role_binding = ""

service_account_name = "kubeconfigsa"

service_account_namespace = "kube-system"

service_gateway_enabled = true

services_cidr = "10.96.0.0/16"

ssh_private_key_path = ""

ssh_public_key_path = ""

tenancy_id = ""

tenancy_name = ""

use_encryption = false

use_existing_key = false

use_existing_vault = true

user_id = ""

username = ""

vcn_cidr = "10.0.0.0/16"

vcn_dns_label = "oke"

vcn_name = "oke vcn"

worker_mode = "private"
