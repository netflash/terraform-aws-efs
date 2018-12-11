# Example: module disabled

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| region | - | string | `us-west-2` | no |

## Outputs

| Name | Description |
|------|-------------|
| dns\_name | FQDN of the EFS volume |
| host | Assigned DNS-record for the EFS |
| id | ID of EFS |
| kms\_key\_id | - |
| mount\_target\_ids | List of IDs of the EFS mount targets |
| mount\_target\_ips | List of IPs of the EFS mount targets |
| mount\_target\_net\_intf\_ids | List of network interface IDs of the EFS mount targets |
| name | Service name that was passed in. This is to make creating mount points easier |
| security\_group | Other resources |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
