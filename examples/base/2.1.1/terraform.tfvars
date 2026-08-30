oci_base_bastion = { "availability_domain" : 1, "bastion_access" : "ANYWHERE", "bastion_enabled" : false, "bastion_image_id" : "Autonomous", "bastion_shape" : { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E3.Flex" }, "bastion_upgrade" : true, "netnum" : 0, "newbits" : 14, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "bastion", "ssh_private_key_path" : "", "ssh_public_key" : "", "ssh_public_key_path" : "", "tags" : { "role" : "bastion" }, "timezone" : "Australia/Sydney" }

oci_base_general = ""

oci_base_operator = { "availability_domain" : 1, "enable_instance_principal" : false, "netnum" : 1, "newbits" : 14, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "operator", "operating_system_version" : "8", "operator_enabled" : false, "operator_image_id" : "Oracle", "operator_shape" : { "boot_volume_size" : 50, "memory" : 4, "ocpus" : 1, "shape" : "VM.Standard.E3.Flex" }, "operator_upgrade" : true, "ssh_private_key_path" : "", "ssh_public_key" : "", "ssh_public_key_path" : "", "tags" : { "role" : "operator" }, "timezone" : "Australia/Sydney" }

oci_base_provider = ""

oci_base_vcn = { "internet_gateway_enabled" : true, "nat_gateway_enabled" : true, "service_gateway_enabled" : true, "tags" : null, "vcn_cidr" : "10.0.0.0/16", "vcn_dns_label" : "", "vcn_name" : "" }
