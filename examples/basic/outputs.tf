// EFS File System outputs
output "dns_name" {
  description = "FQDN of the EFS volume"
  value       = "${module.efs.dns_name}"
}

output "id" {
  description = "ID of EFS"
  value       = "${module.efs.id}"
}

output "kms_key_id" {
  description = ""
  value       = "${module.efs.kms_key_id}"
}

output "name" {
  description = "Service name that was passed in. This is to make creating mount points easier"
  value       = "${module.efs.name}"
}

// EFS Mount Target outputs
/*
# Same as EFS mount_target_dns_names
output "mount_target_dns_names" {
  description = "List of DNS names of the EFS mount targets"
  value       = ["${aws_efs_mount_target.default.*.dns_name}"]
}
*/
output "mount_target_ids" {
  description = "List of IDs of the EFS mount targets"
  value       = "${module.efs.mount_target_ids}"
}

output "mount_target_ips" {
  description = "List of IPs of the EFS mount targets"
  value       = "${module.efs.mount_target_ips}"
}

output "mount_target_net_intf_ids" {
  description = "List of network interface IDs of the EFS mount targets"
  value       = "${module.efs.mount_target_net_intf_ids}"
}

// Other resources
output "security_group" {
  description = ""
  value       = "${module.efs.security_group}"
}

// Submodules output
output "host" {
  description = "Assigned DNS-record for the EFS"
  value       = "${module.efs.host}"
}
