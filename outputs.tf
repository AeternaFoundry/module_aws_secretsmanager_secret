output "secretsmanager_secrets_id" {
  description = "Map of id values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secretsmanager_secrets_arn" {
  description = "Map of arn values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "secretsmanager_secrets_description" {
  description = "Map of description values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "secretsmanager_secrets_force_overwrite_replica_secret" {
  description = "Map of force_overwrite_replica_secret values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.force_overwrite_replica_secret if v.force_overwrite_replica_secret != null }
}
output "secretsmanager_secrets_kms_key_id" {
  description = "Map of kms_key_id values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "secretsmanager_secrets_name" {
  description = "Map of name values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "secretsmanager_secrets_name_prefix" {
  description = "Map of name_prefix values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "secretsmanager_secrets_policy" {
  description = "Map of policy values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "secretsmanager_secrets_recovery_window_in_days" {
  description = "Map of recovery_window_in_days values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.recovery_window_in_days if v.recovery_window_in_days != null }
}
output "secretsmanager_secrets_region" {
  description = "Map of region values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "secretsmanager_secrets_replica" {
  description = "Map of replica values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.replica if v.replica != null && length(v.replica) > 0 }
}
output "secretsmanager_secrets_tags" {
  description = "Map of tags values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "secretsmanager_secrets_tags_all" {
  description = "Map of tags_all values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "secretsmanager_secrets_type" {
  description = "Map of type values across all secretsmanager_secrets, keyed the same as var.secretsmanager_secrets"
  value       = { for k, v in aws_secretsmanager_secret.secretsmanager_secrets : k => v.type if v.type != null && length(v.type) > 0 }
}

