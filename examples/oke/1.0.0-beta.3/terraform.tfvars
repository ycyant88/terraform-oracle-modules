add_incubator_repo = false

add_jetstack_repo = false

allow_node_port_access = false

allow_worker_ssh_access = false

api_fingerprint = ""

api_private_key_path = ""

availability_domains = { "bastion" : 1 }

bastion_access = "ANYWHERE"

bastion_package_update = true

bastion_package_upgrade = true

bastion_shape = "VM.Standard.E2.1"

calico_version = "3.9"

cluster_name = "oke"

compartment_name = ""

compartment_ocid = ""

create_auth_token = false

create_bastion = true

create_nat_gateway = true

create_service_gateway = true

dashboard_enabled = true

disable_auto_retries = true

email_address = ""

enable_instance_principal = false

existing_key_id = ""

existing_vault_id = ""

helm_version = "2.14.3"

image_ocid = "NONE"

image_operating_system = "Oracle Linux"

image_operating_system_version = "7.7"

install_calico = false

install_helm = false

install_metricserver = false

kubernetes_version = "LATEST"

label_prefix = "oke"

lb_subnet_type = "public"

nat_gateway_name = "nat"

newbits = { "bastion" : 13, "lb" : 11, "workers" : 2 }

node_pool_image_id = "NONE"

node_pool_name_prefix = "np"

node_pool_os = "Oracle Linux"

node_pool_os_version = "7.6"

node_pools = ""

ocir_urls = { "ap-mumbai-1" : "bom.ocir.io", "ap-seoul-1" : "icn.ocir.io", "ap-sydney-1" : "syd.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "eu-zurich-1" : "zrh.ocir.io", "sa-saopaulo-1" : "gru.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }

pods_cidr = "10.244.0.0/16"

preferred_lb_subnets = "public"

region = "us-phoenix-1"

service_gateway_name = "sg"

services_cidr = "10.96.0.0/16"

ssh_private_key_path = ""

ssh_public_key_path = ""

subnets = { "bastion" : 32, "int_lb" : 16, "pub_lb" : 17, "workers" : 1 }

tenancy_name = ""

tenancy_ocid = ""

tiller_enabled = true

use_encryption = false

use_existing_key = false

use_existing_vault = true

user_ocid = ""

username = ""

vcn_cidr = "10.0.0.0/16"

vcn_dns_name = "oke"

vcn_name = "oke vcn"

worker_mode = "private"
