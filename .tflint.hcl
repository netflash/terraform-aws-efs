config {
terraform_version = "0.11.10"
deep_check = true
ignore_module = {
"cloudposse/route53-cluster-hostname/aws" = true
"devops-workflow/boolean/local" = true
"devops-workflow/label/local" = true
}
}

