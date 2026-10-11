variable "dialogflow_fulfillments" {
  description = <<EOT
Map of dialogflow_fulfillments, attributes below
Required:
    - display_name
Optional:
    - deletion_policy
    - enabled
    - project
    - features (block):
        - type (required)
    - generic_web_service (block):
        - password (optional)
        - request_headers (optional)
        - uri (required)
        - username (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name    = string
    deletion_policy = optional(string)
    enabled         = optional(bool)
    project         = optional(string)
    features = optional(list(object({
      type = string
    })))
    generic_web_service = optional(object({
      password        = optional(string)
      request_headers = optional(map(string))
      uri             = string
      username        = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

