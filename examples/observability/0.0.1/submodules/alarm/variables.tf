variable "alarm_def" {
  description = "OCI Alarm definition"
  type = map(object({
    destination                  = string
    display_name                 = string
    severity                     = optional(string, "CRITICAL")
    query                        = string
    is_enabled                   = optional(bool, true)
    namespace                    = string
    metric_compartment_id        = optional(string)
    repeat_notification_duration = optional(string, "PT5M")
    trigger                      = optional(string, "PT5M")
    suppression_from_time        = optional(string)
    suppression_till_time        = optional(string)
    message_format               = optional(string, "RAW")
    body                         = optional(string, null)
    freeform_tags                = optional(map(string))
    defined_tags                 = optional(map(string))
  }))
  default = ""
}

variable "compartment_ocid" {
  description = "Compartment OCID"
  type        = string
  default     = ""
}

variable "label_prefix" {
  description = "Prefix to be added to the resources"
  type        = string
  default     = "none"
}

variable "notification" {
  description = "Notification Topic and Subscription"
  type = map(object({
    description   = optional(string)
    create_topic  = optional(bool, true)
    defined_tags  = optional(map(string))
    freeform_tags = optional(map(string))
    subscription = optional(map(object({
      endpoint = string
      protocol = string
    })))
  }))
  default = ""
}
