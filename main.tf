resource "stripe_billing_meter" "billing_meters" {
  for_each = var.billing_meters

  display_name      = each.value.display_name
  event_name        = each.value.event_name
  event_time_window = each.value.event_time_window

  dynamic "customer_mapping" {
    for_each = each.value.customer_mapping != null ? each.value.customer_mapping : []
    content {
      event_payload_key = customer_mapping.value.event_payload_key
      type              = customer_mapping.value.type
    }
  }

  dynamic "default_aggregation" {
    for_each = each.value.default_aggregation != null ? each.value.default_aggregation : []
    content {
      formula = default_aggregation.value.formula
    }
  }

  dynamic "value_settings" {
    for_each = each.value.value_settings != null ? each.value.value_settings : []
    content {
      event_payload_key = value_settings.value.event_payload_key
    }
  }
}

