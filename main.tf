resource "confluent_flink_connection" "flink_connections" {
  for_each = var.flink_connections

  display_name      = each.value.display_name
  endpoint          = each.value.endpoint
  type              = each.value.type
  api_key           = each.value.api_key
  aws_access_key    = each.value.aws_access_key
  aws_secret_key    = each.value.aws_secret_key
  aws_session_token = each.value.aws_session_token
  password          = each.value.password
  rest_endpoint     = each.value.rest_endpoint
  service_key       = each.value.service_key
  username          = each.value.username

  dynamic "compute_pool" {
    for_each = each.value.compute_pool != null ? [each.value.compute_pool] : []
    content {
      id = compute_pool.value.id
    }
  }

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "environment" {
    for_each = each.value.environment != null ? [each.value.environment] : []
    content {
      id = environment.value.id
    }
  }

  dynamic "organization" {
    for_each = each.value.organization != null ? [each.value.organization] : []
    content {
      id = organization.value.id
    }
  }

  dynamic "principal" {
    for_each = each.value.principal != null ? [each.value.principal] : []
    content {
      id = principal.value.id
    }
  }
}

