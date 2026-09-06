admin_enabled = false

admin_image_id = "Oracle"

admin_instance_principal = true

admin_notification_enabled = false

admin_notification_endpoint = ""

admin_notification_protocol = "EMAIL"

admin_notification_topic = "admin"

admin_package_upgrade = true

admin_shape = "VM.Standard.E2.1"

admin_timezone = "Australia/Sydney"

allow_master_ssh_access = false

allow_worker_ssh_access = false

api_fingerprint = ""

api_private_key_path = ""

availability_domains = { "admin" : 1, "bastion" : 1, "operator" : 1 }

bastion_access = "ANYWHERE"

bastion_enabled = true

bastion_image_id = "Autonomous"

bastion_notification_enabled = false

bastion_notification_endpoint = ""

bastion_notification_protocol = "EMAIL"

bastion_notification_topic = "bastion"

bastion_package_upgrade = true

bastion_shape = "VM.Standard.E2.1"

bastion_timezone = "Australia/Sydney"

city = ""

cluster_name = "olcne"

common_name = ""

compartment_id = ""

country = ""

create_kata_runtime = false

disable_auto_retries = false

environment_name = "dev"

helm_version = "3.1.1"

int_lb_shape = "100Mbps"

kata_runtime_class_name = "kata"

label_prefix = "dev"

master_image_id = "Oracle Linux"

master_package_upgrade = true

master_shape = "VM.Standard.E2.2"

master_size = 1

master_timezone = "Australia/Sydney"

nat_gateway_enabled = true

netnum = { "admin" : 33, "bastion" : 32, "int_lb" : 16, "master" : 48, "operator" : 18, "pub_lb" : 17, "worker" : 1 }

newbits = { "admin" : 13, "bastion" : 13, "lb" : 11, "master" : 12, "operator" : 13, "worker" : 2 }

operator_image_id = "Oracle Linux"

operator_package_upgrade = true

operator_shape = "VM.Standard.E2.2"

operator_timezone = "Australia/Sydney"

org = ""

org_unit = ""

public_lb_shape = "100Mbps"

region = ""

secret_id = ""

service_gateway_enabled = true

ssh_private_key_path = ""

ssh_public_key_path = ""

state = ""

tenancy_id = ""

user_id = ""

vcn_cidr = "10.0.0.0/16"

vcn_dns_label = "olcne"

vcn_name = "olcne"

worker_image_id = "Oracle Linux"

worker_package_upgrade = true

worker_shape = "VM.Standard.E2.2"

worker_size = 3

worker_timezone = "Australia/Sydney"
