// Variables specific to module label
variable "attributes" {
  description = "Suffix name with additional attributes (policy, role, etc.)"
  type        = list(string)
  default     = []
}

variable "component" {
  description = "TAG: Underlying, dedicated piece of service (Cache, DB, ...)"
  type        = string
  default     = "UNDEF-EFS"
}

variable "delimiter" {
  description = "Delimiter to be used between `name`, `namespaces`, `attributes`, etc."
  type        = string
  default     = "-"
}

variable "environment" {
  description = "Environment (ex: `dev`, `qa`, `stage`, `prod`). (Second or top level namespace. Depending on namespacing options)"
  type        = string
}

variable "monitor" {
  description = "TAG: Should resource be monitored"
  type        = string
  default     = "UNDEF-EFS"
}

variable "name" {
  description = "Base name for resource"
  type        = string
}

variable "namespace-env" {
  description = "Prefix name with the environment. If true, format is: <env>-<name>"
  default     = true
}

variable "namespace-org" {
  description = "Prefix name with the organization. If true, format is: <org>-<env namespaced name>. If both env and org namespaces are used, format will be <org>-<env>-<name>"
  default     = false
}

variable "organization" {
  description = "Organization name (Top level namespace)"
  type        = string
  default     = ""
}

variable "owner" {
  description = "TAG: Owner of the service"
  type        = string
  default     = "UNDEF-EFS"
}

variable "product" {
  description = "TAG: Company/business product"
  type        = string
  default     = "UNDEF-EFS"
}

variable "service" {
  description = "TAG: Application (microservice) name"
  type        = string
  default     = "UNDEF-EFS"
}

variable "tags" {
  description = "A map of additional tags"
  type        = map(string)
  default     = {}
}

variable "team" {
  description = "TAG: Department/team of people responsible for service"
  type        = string
  default     = "UNDEF-EFS"
}

// Variables specific to module route53-cluster-hostname
variable "dns_ttl" {
  description = "TTL of the DNS record"
  type        = string
  default     = "60"
}

variable "zone_id" {
  description = "Route53 DNS zone ID"
  type        = string
  default     = ""
}

// Variables specific to this module
variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = "true"
}

variable "encrypted" {
  description = "If true, the disk will be encrypted"
  type        = string
  default     = "false"
}

variable "ingress_cidr" {
  description = "List of CIDR to allow access to EFS"
  type        = list(string)
  default     = []
}

variable "kms_key_id" {
  description = "ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true"
  type        = string
  default     = ""
}

variable "performance_mode" {
  description = "The file system performance mode. Can be either generalPurpose or maxIO"
  type        = string
  default     = "generalPurpose"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = ""
}

variable "security_groups" {
  description = "AWS security group IDs to allow to connect to the EFS"
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "AWS subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "AWS VPC ID"
  type        = string
}

