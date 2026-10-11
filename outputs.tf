output "flink_connections_id" {
  description = "Map of id values across all flink_connections, keyed the same as var.flink_connections except keys with no id are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "flink_connections_api_key" {
  description = "Map of api_key values across all flink_connections, keyed the same as var.flink_connections except keys with no api_key are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.api_key if v.api_key != null && length(v.api_key) > 0 }
}
output "flink_connections_api_version" {
  description = "Map of api_version values across all flink_connections, keyed the same as var.flink_connections except keys with no api_version are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "flink_connections_aws_access_key" {
  description = "Map of aws_access_key values across all flink_connections, keyed the same as var.flink_connections except keys with no aws_access_key are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.aws_access_key if v.aws_access_key != null && length(v.aws_access_key) > 0 }
}
output "flink_connections_aws_secret_key" {
  description = "Map of aws_secret_key values across all flink_connections, keyed the same as var.flink_connections except keys with no aws_secret_key are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.aws_secret_key if v.aws_secret_key != null && length(v.aws_secret_key) > 0 }
}
output "flink_connections_aws_session_token" {
  description = "Map of aws_session_token values across all flink_connections, keyed the same as var.flink_connections except keys with no aws_session_token are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.aws_session_token if v.aws_session_token != null && length(v.aws_session_token) > 0 }
}
output "flink_connections_compute_pool" {
  description = "Map of compute_pool values across all flink_connections, keyed the same as var.flink_connections except keys with no compute_pool are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => one(v.compute_pool) if v.compute_pool != null && length(v.compute_pool) > 0 }
}
output "flink_connections_credentials" {
  description = "Map of credentials values across all flink_connections, keyed the same as var.flink_connections except keys with no credentials are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "flink_connections_display_name" {
  description = "Map of display_name values across all flink_connections, keyed the same as var.flink_connections except keys with no display_name are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "flink_connections_endpoint" {
  description = "Map of endpoint values across all flink_connections, keyed the same as var.flink_connections except keys with no endpoint are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "flink_connections_environment" {
  description = "Map of environment values across all flink_connections, keyed the same as var.flink_connections except keys with no environment are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "flink_connections_kind" {
  description = "Map of kind values across all flink_connections, keyed the same as var.flink_connections except keys with no kind are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "flink_connections_organization" {
  description = "Map of organization values across all flink_connections, keyed the same as var.flink_connections except keys with no organization are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => one(v.organization) if v.organization != null && length(v.organization) > 0 }
}
output "flink_connections_password" {
  description = "Map of password values across all flink_connections, keyed the same as var.flink_connections except keys with no password are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.password if v.password != null && length(v.password) > 0 }
}
output "flink_connections_principal" {
  description = "Map of principal values across all flink_connections, keyed the same as var.flink_connections except keys with no principal are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => one(v.principal) if v.principal != null && length(v.principal) > 0 }
}
output "flink_connections_rest_endpoint" {
  description = "Map of rest_endpoint values across all flink_connections, keyed the same as var.flink_connections except keys with no rest_endpoint are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}
output "flink_connections_service_key" {
  description = "Map of service_key values across all flink_connections, keyed the same as var.flink_connections except keys with no service_key are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.service_key if v.service_key != null && length(v.service_key) > 0 }
}
output "flink_connections_type" {
  description = "Map of type values across all flink_connections, keyed the same as var.flink_connections except keys with no type are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.type if v.type != null && length(v.type) > 0 }
}
output "flink_connections_username" {
  description = "Map of username values across all flink_connections, keyed the same as var.flink_connections except keys with no username are omitted"
  value       = { for k, v in confluent_flink_connection.flink_connections : k => v.username if v.username != null && length(v.username) > 0 }
}

