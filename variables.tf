variable "flink_connections" {
  description = <<EOT
Map of flink_connections, attributes below
Required:
    - display_name
    - endpoint
    - type
Optional:
    - api_key
    - aws_access_key
    - aws_secret_key
    - aws_session_token
    - password
    - rest_endpoint
    - service_key
    - username
    - compute_pool (block):
        - id (required)
    - credentials (block):
        - key (required)
        - secret (required)
    - environment (block):
        - id (required)
    - organization (block):
        - id (required)
    - principal (block):
        - id (required)
EOT

  type = map(object({
    display_name      = string
    endpoint          = string
    type              = string
    api_key           = optional(string)
    aws_access_key    = optional(string)
    aws_secret_key    = optional(string)
    aws_session_token = optional(string)
    password          = optional(string)
    rest_endpoint     = optional(string)
    service_key       = optional(string)
    username          = optional(string)
    compute_pool = optional(object({
      id = string
    }))
    credentials = optional(object({
      key    = string
      secret = string
    }))
    environment = optional(object({
      id = string
    }))
    organization = optional(object({
      id = string
    }))
    principal = optional(object({
      id = string
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

