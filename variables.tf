
// Variables specific to module label
variable "attributes" {
  description = "Suffix name with additional attributes (policy, role, etc.)"
  type        = "list"
  default     = []
}
variable "delimiter" {
  description = "Delimiter to be used between `name`, `namespaces`, `attributes`, etc."
  type        = "string"
  default     = "-"
}
variable "environment" {
  description = "Environment (ex: dev, qa, stage, prod)"
  type        = "string"
}
variable "name" {
  description = "Base name for resource"
  type        = "string"
}
variable "namespace-env" {
  description = "Prefix name with the environment"
  default     = true
}
variable "namespace-org" {
  description = "Prefix name with the organization. If both env and org namespaces are used, format will be <org>-<env>-<name>"
  default     = false
}
variable "organization" {
  description = "Organization name"
  type        = "string"
  default     = ""
}
variable "tags" {
  description = "A map of additional tags to add"
  type        = "map"
  default     = {}
}

// Variables specific to module route53-cluster-hostname
variable "dns_ttl" {
  description = "TTL of the DNS record"
  type        = "string"
  default     = "60"
}
variable "zone_id" {
  description = "Route53 DNS zone ID"
  type        = "string"
  default     = ""
}

// Variables specific to this module
variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}
variable "encrypted" {
  description = "If true, the disk will be encrypted"
  type        = "string"
  default     = "false"
}
variable "kms_key_id" {
  description = "ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true"
  type        = "string"
  default     = ""
}
variable "performance_mode" {
  description = "The file system performance mode. Can be either generalPurpose or maxIO"
  type        = "string"
  default     = "generalPurpose"
}
variable "region" {
  description = "AWS region"
  type        = "string"
  default     = ""
}
variable "security_groups" {
  description = "AWS security group IDs to allow to connect to the EFS"
  type        = "list"
}
variable "subnets" {
  description = "AWS subnet IDs"
  type        = "list"
}
variable "vpc_id" {
  description = "AWS VPC ID"
  type        = "string"
}
