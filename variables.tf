variable "billing_meters" {
  description = <<EOT
Map of billing_meters, attributes below
Required:
    - display_name
    - event_name
Optional:
    - event_time_window
    - customer_mapping (block):
        - event_payload_key (required)
        - type (required)
    - default_aggregation (block):
        - formula (required)
    - value_settings (block):
        - event_payload_key (optional)
EOT

  type = map(object({
    display_name      = string
    event_name        = string
    event_time_window = optional(string)
    customer_mapping = optional(list(object({
      event_payload_key = string
      type              = string
    })))
    default_aggregation = optional(list(object({
      formula = string
    })))
    value_settings = optional(list(object({
      event_payload_key = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.billing_meters : (
        v.event_time_window == null || (contains(["day", "hour"], v.event_time_window))
      )
    ])
    error_message = "must be one of: \"day\", \"hour\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_meters : (
        v.customer_mapping == null || alltrue([for item in v.customer_mapping : (contains(["by_id"], item.type))])
      )
    ])
    error_message = "must be one of: \"by_id\""
  }
  validation {
    condition = alltrue([
      for k, v in var.billing_meters : (
        v.default_aggregation == null || alltrue([for item in v.default_aggregation : (contains(["count", "last", "sum"], item.formula))])
      )
    ])
    error_message = "must be one of: \"count\", \"last\", \"sum\""
  }
}

