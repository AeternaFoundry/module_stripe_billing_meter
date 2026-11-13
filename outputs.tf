output "billing_meters_id" {
  description = "Map of id values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.id }
}
output "billing_meters_created" {
  description = "Map of created values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.created }
}
output "billing_meters_customer_mapping" {
  description = "Map of customer_mapping values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.customer_mapping }
}
output "billing_meters_default_aggregation" {
  description = "Map of default_aggregation values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.default_aggregation }
}
output "billing_meters_display_name" {
  description = "Map of display_name values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.display_name }
}
output "billing_meters_event_name" {
  description = "Map of event_name values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.event_name }
}
output "billing_meters_event_time_window" {
  description = "Map of event_time_window values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.event_time_window }
}
output "billing_meters_livemode" {
  description = "Map of livemode values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.livemode }
}
output "billing_meters_object" {
  description = "Map of object values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.object }
}
output "billing_meters_status" {
  description = "Map of status values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.status }
}
output "billing_meters_status_transitions" {
  description = "Map of status_transitions values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.status_transitions }
}
output "billing_meters_updated" {
  description = "Map of updated values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.updated }
}
output "billing_meters_value_settings" {
  description = "Map of value_settings values across all billing_meters, keyed the same as var.billing_meters"
  value       = { for k, v in stripe_billing_meter.billing_meters : k => v.value_settings }
}

