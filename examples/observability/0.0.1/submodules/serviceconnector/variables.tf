variable "dynamic_group" {
  description = "Dynamic group definition for service connector"
  type        = map(any)
  default     = {}
}

variable "policy_compartment_id" {
  description = "Compartment where policy will be created"
  type        = string
  default     = ""
}

variable "service_connector_def" {
  description = ""
  type = map(object({
    defined_tags       = optional(map(string))
    freeform_tags      = optional(map(string))
    display_name       = string
    description        = optional(string)
    state              = optional(string, "ACTIVE")
    sch_source         = string
    sch_target         = string
    compartment_id     = string
    create_policy      = optional(bool, false)
    dynamic_group_name = optional(string)

    #For Streaming source
    stream_id     = optional(string)
    stream_cursor = optional(string, "LATEST")
    #For logging source
    log_source = optional(list(object({
      compartment_id = optional(string)
      log_group_id   = optional(string, "_Audit")
      log_id         = optional(string)
    })))
    #For monitoring source
    monitoring_source = optional(list(object({
      compartment_id   = optional(string)
      metric_namespace = list(string)
    })))

    target = object({
      #For Objectstorage target
      bucket                     = optional(string)
      batch_rollover_size_in_mbs = optional(number, 100)
      batch_rollover_time_in_ms  = optional(number, 420000)
      object_name_prefix         = optional(string)
      #For Streaming target
      stream_id = optional(string)
      #For Notification target
      topic_id = optional(string)
      #For Function target
      function_id = optional(string)
      #For LoggingAnalytics Target
      log_group_id   = optional(string)
      log_source     = optional(string)
      compartment_id = optional(string)
    })
    tasks = optional(object({
      log_condition     = optional(string)
      function_id       = optional(string)
      batch_size_in_kbs = optional(string, 5120)
      batch_time_in_sec = optional(string, 600)

    }))
  }))
  default = ""
}

variable "tenancy_ocid" {
  description = "Tenancy OCID"
  type        = string
  default     = ""
}
