#
# Setup AWS EFS file system
#
# https://www.terraform.io/docs/providers/aws/r/efs_file_system.html
# https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html

# Define composite variables for resources
module "label" {
  source        = "devops-workflow/label/local"
  version       = "0.1.0"
  organization  = "${var.namespace}"
  name          = "${var.name}"
  namespace-env = "${}"
  namespace-org = "${}"
  environment   = "${var.stage}"
  delimiter     = "${var.delimiter}"
  attributes    = "${var.attributes}"
  tags          = "${var.tags}"
}

resource "aws_efs_file_system" "default" {
  tags = "${module.label.tags}"
}

resource "aws_efs_mount_target" "default" {
  count           = "${length(var.availability_zones)}"
  file_system_id  = "${aws_efs_file_system.default.id}"
  subnet_id       = "${element(var.subnets, count.index)}"
  security_groups = ["${aws_security_group.default.id}"]
}

resource "aws_security_group" "default" {
  name        = "${module.label.id}"
  description = "EFS"
  vpc_id      = "${var.vpc_id}"

  lifecycle {
    create_before_destroy = true
  }

  ingress {
    from_port       = "2049"                     # NFS
    to_port         = "2049"
    protocol        = "tcp"
    security_groups = ["${var.security_groups}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = "${module.label.tags}"
}

module "dns" {
  source  = "git::https://github.com/cloudposse/terraform-aws-route53-cluster-hostname.git?ref=tags/0.1.1"
  name    = "${module.label.id}"
  ttl     = 60
  zone_id = "${var.zone_id}"
  records = ["${aws_efs_file_system.default.id}.efs.${var.aws_region}.amazonaws.com"]
}
