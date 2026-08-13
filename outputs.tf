output "opensearch_domains_id" {
  description = "Map of id values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "opensearch_domains_access_policies" {
  description = "Map of access_policies values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.access_policies if v.access_policies != null && length(v.access_policies) > 0 }
}
output "opensearch_domains_advanced_options" {
  description = "Map of advanced_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.advanced_options if v.advanced_options != null && length(v.advanced_options) > 0 }
}
output "opensearch_domains_advanced_security_options" {
  description = "Map of advanced_security_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.advanced_security_options if v.advanced_security_options != null && length(v.advanced_security_options) > 0 }
  sensitive   = true
}
output "opensearch_domains_aiml_options" {
  description = "Map of aiml_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.aiml_options if v.aiml_options != null && length(v.aiml_options) > 0 }
}
output "opensearch_domains_arn" {
  description = "Map of arn values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "opensearch_domains_auto_tune_options" {
  description = "Map of auto_tune_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.auto_tune_options if v.auto_tune_options != null && length(v.auto_tune_options) > 0 }
}
output "opensearch_domains_cluster_config" {
  description = "Map of cluster_config values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.cluster_config if v.cluster_config != null && length(v.cluster_config) > 0 }
}
output "opensearch_domains_cognito_options" {
  description = "Map of cognito_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.cognito_options if v.cognito_options != null && length(v.cognito_options) > 0 }
}
output "opensearch_domains_dashboard_endpoint" {
  description = "Map of dashboard_endpoint values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.dashboard_endpoint if v.dashboard_endpoint != null && length(v.dashboard_endpoint) > 0 }
}
output "opensearch_domains_dashboard_endpoint_v2" {
  description = "Map of dashboard_endpoint_v2 values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.dashboard_endpoint_v2 if v.dashboard_endpoint_v2 != null && length(v.dashboard_endpoint_v2) > 0 }
}
output "opensearch_domains_deployment_strategy_options" {
  description = "Map of deployment_strategy_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.deployment_strategy_options if v.deployment_strategy_options != null && length(v.deployment_strategy_options) > 0 }
}
output "opensearch_domains_domain_endpoint_options" {
  description = "Map of domain_endpoint_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.domain_endpoint_options if v.domain_endpoint_options != null && length(v.domain_endpoint_options) > 0 }
}
output "opensearch_domains_domain_endpoint_v2_hosted_zone_id" {
  description = "Map of domain_endpoint_v2_hosted_zone_id values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.domain_endpoint_v2_hosted_zone_id if v.domain_endpoint_v2_hosted_zone_id != null && length(v.domain_endpoint_v2_hosted_zone_id) > 0 }
}
output "opensearch_domains_domain_id" {
  description = "Map of domain_id values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "opensearch_domains_domain_name" {
  description = "Map of domain_name values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "opensearch_domains_ebs_options" {
  description = "Map of ebs_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.ebs_options if v.ebs_options != null && length(v.ebs_options) > 0 }
}
output "opensearch_domains_encrypt_at_rest" {
  description = "Map of encrypt_at_rest values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.encrypt_at_rest if v.encrypt_at_rest != null && length(v.encrypt_at_rest) > 0 }
}
output "opensearch_domains_endpoint" {
  description = "Map of endpoint values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "opensearch_domains_endpoint_v2" {
  description = "Map of endpoint_v2 values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.endpoint_v2 if v.endpoint_v2 != null && length(v.endpoint_v2) > 0 }
}
output "opensearch_domains_engine_version" {
  description = "Map of engine_version values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "opensearch_domains_identity_center_options" {
  description = "Map of identity_center_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.identity_center_options if v.identity_center_options != null && length(v.identity_center_options) > 0 }
}
output "opensearch_domains_ip_address_type" {
  description = "Map of ip_address_type values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "opensearch_domains_log_publishing_options" {
  description = "Map of log_publishing_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.log_publishing_options if v.log_publishing_options != null && length(v.log_publishing_options) > 0 }
}
output "opensearch_domains_node_to_node_encryption" {
  description = "Map of node_to_node_encryption values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.node_to_node_encryption if v.node_to_node_encryption != null && length(v.node_to_node_encryption) > 0 }
}
output "opensearch_domains_off_peak_window_options" {
  description = "Map of off_peak_window_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.off_peak_window_options if v.off_peak_window_options != null && length(v.off_peak_window_options) > 0 }
}
output "opensearch_domains_region" {
  description = "Map of region values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.region if v.region != null && length(v.region) > 0 }
}
output "opensearch_domains_snapshot_options" {
  description = "Map of snapshot_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.snapshot_options if v.snapshot_options != null && length(v.snapshot_options) > 0 }
}
output "opensearch_domains_software_update_options" {
  description = "Map of software_update_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.software_update_options if v.software_update_options != null && length(v.software_update_options) > 0 }
}
output "opensearch_domains_tags" {
  description = "Map of tags values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "opensearch_domains_tags_all" {
  description = "Map of tags_all values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "opensearch_domains_vpc_options" {
  description = "Map of vpc_options values across all opensearch_domains, keyed the same as var.opensearch_domains"
  value       = { for k, v in aws_opensearch_domain.opensearch_domains : k => v.vpc_options if v.vpc_options != null && length(v.vpc_options) > 0 }
}

