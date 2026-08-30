assign_dns = true

bastion_allowed_cidrs = ["anywhere"]

bastion_availability_domain = 1

bastion_await_cloudinit = true

bastion_image_id = null

bastion_image_os = "Oracle Autonomous Linux"

bastion_image_os_version = "9"

bastion_image_type = "platform"

bastion_is_public = true

bastion_nsg_ids = []

bastion_route_table_id = null

bastion_shape = { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E4.Flex" }

bastion_state = "RUNNING"

bastion_timezone = "Australia/Sydney"

bastion_user = "opc"

compartment_id = ""

freeform_tags = { "access" : "public", "environment" : "dev", "role" : "bastion" }

ig_route_id = null

label_prefix = "none"

netnum = 0

newbits = 14

ssh_private_key = null

ssh_public_key = ""

ssh_public_key_path = ""

upgrade_bastion = false

vcn_id = ""
