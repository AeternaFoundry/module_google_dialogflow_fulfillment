output "dialogflow_fulfillments_id" {
  description = "Map of id values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_fulfillments_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_fulfillments_display_name" {
  description = "Map of display_name values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_fulfillments_enabled" {
  description = "Map of enabled values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no enabled are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.enabled if v.enabled != null }
}
output "dialogflow_fulfillments_features" {
  description = "Map of features values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no features are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.features if v.features != null && length(v.features) > 0 }
}
output "dialogflow_fulfillments_generic_web_service" {
  description = "Map of generic_web_service values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no generic_web_service are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => one(v.generic_web_service) if v.generic_web_service != null && length(v.generic_web_service) > 0 }
}
output "dialogflow_fulfillments_name" {
  description = "Map of name values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_fulfillments_project" {
  description = "Map of project values across all dialogflow_fulfillments, keyed the same as var.dialogflow_fulfillments except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_fulfillment.dialogflow_fulfillments : k => v.project if v.project != null && length(v.project) > 0 }
}

