api_fingerprint = ""

api_private_key_path = ""

availability_domains = { "bastion" : 1, "lb_ad1" : 1, "lb_ad2" : 2, "lb_ad3" : 3, "workers_ad1" : 1, "workers_ad2" : 2, "workers_ad3" : 3 }

bastion_shape = "VM.Standard2.1"

calico_version = "3.6"

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

helm_version = "2.13.0"

image_ocid = "NONE"

image_operating_system = "Oracle Linux"

image_operating_system_version = "7.6"

install_calico = false

install_helm = false

kubernetes_version = "LATEST"

label_prefix = "oke"

nat_gateway_name = "nat"

newbits = { "bastion" : "8", "lb" : "8", "workers" : "8" }

node_pool_name_prefix = "np"

node_pool_node_image_name = "Oracle-Linux-7.5"

node_pool_node_shape = "VM.Standard2.1"

node_pool_quantity_per_subnet = 1

node_pools = 1

nodepool_topology = 3

ocir_urls = { "ap-seoul-1" : "icn.ocir.io", "ap-tokyo-1" : "nrt.ocir.io", "ca-toronto-1" : "yyz.ocir.io", "eu-frankfurt-1" : "fra.ocir.io", "uk-london-1" : "lhr.ocir.io", "us-ashburn-1" : "iad.ocir.io", "us-phoenix-1" : "phx.ocir.io" }

pods_cidr = "10.244.0.0/16"

region = "us-phoenix-1"

service_gateway_name = "sg"

services_cidr = "10.96.0.0/16"

ssh_private_key_path = ""

ssh_public_key_path = ""

subnets = { "bastion" : 11, "lb_ad1" : 12, "lb_ad2" : 22, "lb_ad3" : 32, "workers_ad1" : 13, "workers_ad2" : 23, "workers_ad3" : 33 }

tenancy_name = ""

tenancy_ocid = ""

tiller_enabled = true

user_ocid = ""

username = ""

vcn_cidr = "10.0.0.0/16"

vcn_dns_name = "oke"

vcn_name = "oke vcn"

worker_mode = "private"
