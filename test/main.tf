module "efs" {
  source       = "../"
  name         = "efs-vol"
  environment  = "testing"
  organization = ""

  #attributes      = ["role", "policy", "use", ""]
  #tags            = "${map("Key", "Value")}"
  zone_id = "ZURF67XJUWC5A" # one

  security_groups = []
  subnets         = ["subnet-857efce3", "subnet-0852f140", "subnet-6395c038"]
  vpc_id          = "vpc-417c0027"                                            # one

  #enabled         = false
}

# Test:
#   enabled = false

