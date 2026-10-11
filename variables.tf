variable "secretsmanager_secrets" {
  description = <<EOT
Map of secretsmanager_secrets, attributes below
Optional:
    - description
    - force_overwrite_replica_secret
    - kms_key_id
    - name
    - name_prefix
    - policy
    - recovery_window_in_days
    - region
    - tags
    - tags_all
    - type
    - replica (block):
        - kms_key_id (optional)
        - region (required)
EOT

  type = map(object({
    description                    = optional(string)
    force_overwrite_replica_secret = optional(bool)
    kms_key_id                     = optional(string)
    name                           = optional(string)
    name_prefix                    = optional(string)
    policy                         = optional(string)
    recovery_window_in_days        = optional(number)
    region                         = optional(string)
    tags                           = optional(map(string))
    tags_all                       = optional(map(string))
    type                           = optional(string)
    replica = optional(list(object({
      kms_key_id = optional(string)
      region     = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.secretsmanager_secrets : (
        v.recovery_window_in_days == null || ((v.recovery_window_in_days >= 7 && v.recovery_window_in_days <= 30) || (contains([0], v.recovery_window_in_days)))
      )
    ])
    error_message = "any of: must be between 7 and 30; must be one of: 0"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

