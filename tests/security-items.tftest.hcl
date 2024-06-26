# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
mock_provider "aws" {
  mock_data "aws_ami" {
    defaults = {
      architecture = "x86_64"
    }
  }
}

variables {
  subnet_id = "subnet-0bb1c79de3EXAMPLE"
  prefix    = "test"
  vpc_id    = "vpc-1234"
}

run "security_items_validation" {
  variables {
    vpc_id = "vpc-0bb1c79de3EXAMPLE"
  }

  assert {
    condition     = data.aws_security_group.default.vpc_id == "vpc-0bb1c79de3EXAMPLE"
    error_message = "VPC ID does not match the expected value"
  }

  assert {
    condition     = aws_security_group_rule.http_from_all.from_port == 80
    error_message = "HTTP from port does not match the expected value"
  }

  assert {
    condition     = aws_security_group_rule.http_from_all.to_port == 80
    error_message = "HTTP to port does not match the expected value"
  }

  assert {
    condition     = aws_security_group_rule.ssh_from_ic.from_port == 22
    error_message = "SSH from port does not match the expected value"
  }

  assert {
    condition     = aws_security_group_rule.ssh_from_ic.to_port == 22
    error_message = "SSH to port does not match the expected value"
  }
}