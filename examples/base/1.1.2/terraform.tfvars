oci_base_admin = { "admin_enabled" : false, "admin_image_id" : "Oracle", "admin_shape" : "", "admin_upgrade" : true, "availability_domains" : 1, "enable_instance_principal" : false, "netnum" : 33, "newbits" : 13, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "admin", "ssh_private_key_path" : "", "ssh_public_key_path" : "", "timezone" : "" }

oci_base_bastion = { "availability_domains" : 1, "bastion_access" : "ANYWHERE", "bastion_enabled" : false, "bastion_image_id" : "Autonomous", "bastion_shape" : "", "bastion_upgrade" : true, "netnum" : 13, "newbits" : 32, "notification_enabled" : false, "notification_endpoint" : "", "notification_protocol" : "EMAIL", "notification_topic" : "bastion", "ssh_private_key_path" : "", "ssh_public_key_path" : "", "timezone" : "" }

oci_base_general = { "label_prefix" : "", "region" : "" }

oci_base_identity = ""

oci_base_vcn = { "nat_gateway_enabled" : true, "service_gateway_enabled" : true, "vcn_cidr" : "10.0.0.0/16", "vcn_dns_label" : "", "vcn_name" : "" }
