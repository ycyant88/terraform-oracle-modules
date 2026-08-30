availability_domain = 1

bastion_access = ["anywhere"]

bastion_image_id = "Autonomous"

bastion_notification_endpoint = ""

bastion_notification_protocol = "EMAIL"

bastion_notification_topic = "bastion"

bastion_os_version = "7.9"

bastion_shape = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }

bastion_state = "RUNNING"

bastion_timezone = "Australia/Sydney"

bastion_type = "public"

compartment_id = ""

enable_bastion_notification = false

freeform_tags = { "access" : "public", "environment" : "dev", "role" : "bastion" }

ig_route_id = ""

label_prefix = "none"

netnum = 0

newbits = 14

ssh_public_key = ""

ssh_public_key_path = ""

tenancy_id = ""

upgrade_bastion = false

vcn_id = ""
