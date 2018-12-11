# Lookup DNS zone, vpc, subnets

module "efs" {
  source          = "../../"
  name            = "efs-vol-disabled"
  environment     = "testing"
  organization    = ""
  zone_id         = "ZURF67XJUWC5A"                                           # one
  security_groups = []
  ingress_cidr    = ["10.0.0.0/8"]
  subnets         = ["subnet-857efce3", "subnet-0852f140", "subnet-6395c038"]
  vpc_id          = "vpc-417c0027"                                            # one
  enabled         = false
}
