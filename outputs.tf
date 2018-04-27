// EFS File System outputs
output "dns_name" {
  description = "FQDN of the EFS volume"
  value       = "${element(concat(aws_efs_file_system.default.*.dns_name, list("")),0)}"
}

output "id" {
  description = "ID of EFS"
  value       = "${element(concat(aws_efs_file_system.default.*.id, list("")),0)}"
}

output "kms_key_id" {
  description = ""
  value       = "${element(concat(aws_efs_file_system.default.*.kms_key_id, list("")),0)}"
}

output "name" {
  description = "Service name that was passed in. This is to make creating mount points easier"
  value       = "${module.label.name}"
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
  value       = ["${aws_efs_mount_target.default.*.id}"]
}

output "mount_target_ips" {
  description = "List of IPs of the EFS mount targets"
  value       = ["${aws_efs_mount_target.default.*.ip_address}"]
}

output "mount_target_net_intf_ids" {
  description = "List of network interface IDs of the EFS mount targets"
  value       = ["${aws_efs_mount_target.default.*.id}"]
}

// Other resources
output "security_group" {
  description = ""
  value       = "${element(concat(aws_security_group.default.*.id, list("")),0)}"
}

// Submodules output
output "host" {
  description = "Assigned DNS-record for the EFS"
  value       = "${element(concat(list(module.dns.hostname), list("")),0)}"
}
