variable "opensearch_domains" {
  description = <<EOT
Map of opensearch_domains, attributes below
Required:
    - domain_name
Optional:
    - access_policies
    - advanced_options
    - engine_version
    - ip_address_type
    - region
    - tags
    - tags_all
    - advanced_security_options (block):
        - anonymous_auth_enabled (optional)
        - enabled (required)
        - internal_user_database_enabled (optional)
        - jwt_options (optional, block):
            - enabled (optional)
            - jwks_url (optional)
            - public_key (optional)
            - roles_key (optional)
            - subject_key (optional)
        - master_user_options (optional, block):
            - master_user_arn (optional)
            - master_user_name (optional)
            - master_user_password (optional)
    - aiml_options (block):
        - natural_language_query_generation_options (optional, block):
            - desired_state (optional)
        - s3_vectors_engine (optional, block):
            - enabled (optional)
        - serverless_vector_acceleration (optional, block):
            - enabled (optional)
    - auto_tune_options (block):
        - desired_state (required)
        - maintenance_schedule (optional, block):
            - cron_expression_for_recurrence (required)
            - duration (required, block):
                - unit (required)
                - value (required)
            - start_at (required)
        - rollback_on_disable (optional)
        - use_off_peak_window (optional)
    - cluster_config (block):
        - cold_storage_options (optional, block):
            - enabled (optional)
        - dedicated_master_count (optional)
        - dedicated_master_enabled (optional)
        - dedicated_master_type (optional)
        - instance_count (optional)
        - instance_type (optional)
        - multi_az_with_standby_enabled (optional)
        - node_options (optional, block):
            - node_config (optional, block):
                - count (optional)
                - enabled (optional)
                - type (optional)
            - node_type (optional)
        - warm_count (optional)
        - warm_enabled (optional)
        - warm_type (optional)
        - zone_awareness_config (optional, block):
            - availability_zone_count (optional)
        - zone_awareness_enabled (optional)
    - cognito_options (block):
        - enabled (optional)
        - identity_pool_id (required)
        - role_arn (required)
        - user_pool_id (required)
    - deployment_strategy_options (block):
        - deployment_strategy (required)
    - domain_endpoint_options (block):
        - custom_endpoint (optional)
        - custom_endpoint_certificate_arn (optional)
        - custom_endpoint_enabled (optional)
        - enforce_https (optional)
        - tls_security_policy (optional)
    - ebs_options (block):
        - ebs_enabled (required)
        - iops (optional)
        - throughput (optional)
        - volume_size (optional)
        - volume_type (optional)
    - encrypt_at_rest (block):
        - enabled (required)
        - kms_key_id (optional)
    - identity_center_options (block):
        - enabled_api_access (optional)
        - identity_center_instance_arn (optional)
        - roles_key (optional)
        - subject_key (optional)
    - log_publishing_options (block):
        - cloudwatch_log_group_arn (required)
        - enabled (optional)
        - log_type (required)
    - node_to_node_encryption (block):
        - enabled (required)
    - off_peak_window_options (block):
        - enabled (optional)
        - off_peak_window (optional, block):
            - window_start_time (optional, block):
                - hours (optional)
                - minutes (optional)
    - snapshot_options (block):
        - automated_snapshot_start_hour (required)
    - software_update_options (block):
        - auto_software_update_enabled (optional)
    - vpc_options (block):
        - security_group_ids (optional)
        - subnet_ids (optional)
EOT

  type = map(object({
    domain_name      = string
    access_policies  = optional(string)
    advanced_options = optional(map(string))
    engine_version   = optional(string)
    ip_address_type  = optional(string)
    region           = optional(string)
    tags             = optional(map(string))
    tags_all         = optional(map(string))
    advanced_security_options = optional(object({
      anonymous_auth_enabled         = optional(bool)
      enabled                        = bool
      internal_user_database_enabled = optional(bool)
      jwt_options = optional(object({
        enabled     = optional(bool)
        jwks_url    = optional(string)
        public_key  = optional(string)
        roles_key   = optional(string)
        subject_key = optional(string)
      }))
      master_user_options = optional(object({
        master_user_arn      = optional(string)
        master_user_name     = optional(string)
        master_user_password = optional(string)
      }))
    }))
    aiml_options = optional(object({
      natural_language_query_generation_options = optional(object({
        desired_state = optional(string)
      }))
      s3_vectors_engine = optional(object({
        enabled = optional(bool)
      }))
      serverless_vector_acceleration = optional(object({
        enabled = optional(bool)
      }))
    }))
    auto_tune_options = optional(object({
      desired_state = string
      maintenance_schedule = optional(list(object({
        cron_expression_for_recurrence = string
        duration = object({
          unit  = string
          value = number
        })
        start_at = string
      })))
      rollback_on_disable = optional(string)
      use_off_peak_window = optional(bool)
    }))
    cluster_config = optional(object({
      cold_storage_options = optional(object({
        enabled = optional(bool)
      }))
      dedicated_master_count        = optional(number)
      dedicated_master_enabled      = optional(bool)
      dedicated_master_type         = optional(string)
      instance_count                = optional(number)
      instance_type                 = optional(string)
      multi_az_with_standby_enabled = optional(bool)
      node_options = optional(list(object({
        node_config = optional(object({
          count   = optional(number)
          enabled = optional(bool)
          type    = optional(string)
        }))
        node_type = optional(string)
      })))
      warm_count   = optional(number)
      warm_enabled = optional(bool)
      warm_type    = optional(string)
      zone_awareness_config = optional(object({
        availability_zone_count = optional(number)
      }))
      zone_awareness_enabled = optional(bool)
    }))
    cognito_options = optional(object({
      enabled          = optional(bool)
      identity_pool_id = string
      role_arn         = string
      user_pool_id     = string
    }))
    deployment_strategy_options = optional(object({
      deployment_strategy = string
    }))
    domain_endpoint_options = optional(object({
      custom_endpoint                 = optional(string)
      custom_endpoint_certificate_arn = optional(string)
      custom_endpoint_enabled         = optional(bool)
      enforce_https                   = optional(bool)
      tls_security_policy             = optional(string)
    }))
    ebs_options = optional(object({
      ebs_enabled = bool
      iops        = optional(number)
      throughput  = optional(number)
      volume_size = optional(number)
      volume_type = optional(string)
    }))
    encrypt_at_rest = optional(object({
      enabled    = bool
      kms_key_id = optional(string)
    }))
    identity_center_options = optional(object({
      enabled_api_access           = optional(bool)
      identity_center_instance_arn = optional(string)
      roles_key                    = optional(string)
      subject_key                  = optional(string)
    }))
    log_publishing_options = optional(list(object({
      cloudwatch_log_group_arn = string
      enabled                  = optional(bool)
      log_type                 = string
    })))
    node_to_node_encryption = optional(object({
      enabled = bool
    }))
    off_peak_window_options = optional(object({
      enabled = optional(bool)
      off_peak_window = optional(object({
        window_start_time = optional(object({
          hours   = optional(number)
          minutes = optional(number)
        }))
      }))
    }))
    snapshot_options = optional(object({
      automated_snapshot_start_hour = number
    }))
    software_update_options = optional(object({
      auto_software_update_enabled = optional(bool)
    }))
    vpc_options = optional(object({
      security_group_ids = optional(set(string))
      subnet_ids         = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.opensearch_domains : (
        v.advanced_security_options == null || (v.advanced_security_options.jwt_options == null || (v.advanced_security_options.jwt_options.jwks_url == null || ((length(v.advanced_security_options.jwt_options.jwks_url) >= 1 && length(v.advanced_security_options.jwt_options.jwks_url) <= 2048))))
      )
    ])
    error_message = "all of: must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.opensearch_domains : (
        v.advanced_security_options == null || (v.advanced_security_options.jwt_options == null || (v.advanced_security_options.jwt_options.roles_key == null || (length(v.advanced_security_options.jwt_options.roles_key) >= 1 && length(v.advanced_security_options.jwt_options.roles_key) <= 64)))
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.opensearch_domains : (
        v.advanced_security_options == null || (v.advanced_security_options.jwt_options == null || (v.advanced_security_options.jwt_options.subject_key == null || (length(v.advanced_security_options.jwt_options.subject_key) >= 1 && length(v.advanced_security_options.jwt_options.subject_key) <= 64)))
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.opensearch_domains : (
        v.cluster_config == null || (v.cluster_config.node_options == null || alltrue([for item in v.cluster_config.node_options : (item.node_config == null || (item.node_config.count == null || (item.node_config.count >= 1)))]))
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.opensearch_domains : (
        v.cluster_config == null || (v.cluster_config.warm_count == null || (v.cluster_config.warm_count >= 2 && v.cluster_config.warm_count <= 150))
      )
    ])
    error_message = "must be between 2 and 150"
  }
  validation {
    condition = alltrue([
      for k, v in var.opensearch_domains : (
        v.cluster_config == null || (v.cluster_config.zone_awareness_config == null || (v.cluster_config.zone_awareness_config.availability_zone_count == null || (contains([2, 3], v.cluster_config.zone_awareness_config.availability_zone_count))))
      )
    ])
    error_message = "must be one of: 2, 3"
  }
  # Note: 21 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

