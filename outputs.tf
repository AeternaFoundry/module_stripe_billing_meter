output "billing_meters_id" {
  description = "Map of id values across all billing_meters, keyed the same as var.billing_meters except keys with no id are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "billing_meters_created" {
  description = "Map of created values across all billing_meters, keyed the same as var.billing_meters except keys with no created are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.created if v.created != null }
}
output "billing_meters_customer_mapping" {
  description = "Map of customer_mapping values across all billing_meters, keyed the same as var.billing_meters except keys with no customer_mapping are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.customer_mapping if v.customer_mapping != null && length(v.customer_mapping) > 0 }
}
output "billing_meters_default_aggregation" {
  description = "Map of default_aggregation values across all billing_meters, keyed the same as var.billing_meters except keys with no default_aggregation are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.default_aggregation if v.default_aggregation != null && length(v.default_aggregation) > 0 }
}
output "billing_meters_display_name" {
  description = "Map of display_name values across all billing_meters, keyed the same as var.billing_meters except keys with no display_name are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "billing_meters_event_name" {
  description = "Map of event_name values across all billing_meters, keyed the same as var.billing_meters except keys with no event_name are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.event_name if v.event_name != null && length(v.event_name) > 0 }
}
output "billing_meters_event_time_window" {
  description = "Map of event_time_window values across all billing_meters, keyed the same as var.billing_meters except keys with no event_time_window are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.event_time_window if v.event_time_window != null && length(v.event_time_window) > 0 }
}
output "billing_meters_livemode" {
  description = "Map of livemode values across all billing_meters, keyed the same as var.billing_meters except keys with no livemode are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.livemode if v.livemode != null }
}
output "billing_meters_object" {
  description = "Map of object values across all billing_meters, keyed the same as var.billing_meters except keys with no object are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.object if v.object != null && length(v.object) > 0 }
}
output "billing_meters_status" {
  description = "Map of status values across all billing_meters, keyed the same as var.billing_meters except keys with no status are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.status if v.status != null && length(v.status) > 0 }
}
output "billing_meters_status_transitions" {
  description = "Map of status_transitions values across all billing_meters, keyed the same as var.billing_meters except keys with no status_transitions are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.status_transitions if v.status_transitions != null && length(v.status_transitions) > 0 }
}
output "billing_meters_updated" {
  description = "Map of updated values across all billing_meters, keyed the same as var.billing_meters except keys with no updated are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.updated if v.updated != null }
}
output "billing_meters_value_settings" {
  description = "Map of value_settings values across all billing_meters, keyed the same as var.billing_meters except keys with no value_settings are omitted"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.value_settings if v.value_settings != null && length(v.value_settings) > 0 }
}

