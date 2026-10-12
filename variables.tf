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
}

