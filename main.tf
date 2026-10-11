resource "google_dialogflow_fulfillment" "dialogflow_fulfillments" {
  for_each = var.dialogflow_fulfillments

  display_name    = each.value.display_name
  deletion_policy = each.value.deletion_policy
  enabled         = each.value.enabled
  project         = each.value.project

  dynamic "features" {
    for_each = each.value.features != null ? each.value.features : []
    content {
      type = features.value.type
    }
  }

  dynamic "generic_web_service" {
    for_each = each.value.generic_web_service != null ? [each.value.generic_web_service] : []
    content {
      password        = generic_web_service.value.password
      request_headers = generic_web_service.value.request_headers
      uri             = generic_web_service.value.uri
      username        = generic_web_service.value.username
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

