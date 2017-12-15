module "efs" {
  source          = "../"
  name            = "CapMe"
  environment     = "Dev"
  #organization    = "CorpXyZ"
  #attributes      = ["role", "policy", "use", ""]
  #tags            = "${map("Key", "Value")}"
  zone_id         = ""
  security_groups = []
  subnets         = []
  vpc_id          = ""
  #enabled         = false
}

# Test:
#   enabled = false
