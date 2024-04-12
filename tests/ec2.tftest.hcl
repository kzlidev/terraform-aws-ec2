
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
variables {
  subnet_id = "subnet-0bb1c79de3EXAMPLE"
  prefix    = "test"
  vpc_id    = "vpc-1234"
}

run "ec2_validation" {
  variables {
    instance_type = "t2.micro"
    subnet_id     = "subnet-0bb1c79de3EXAMPLE"
    prefix        = "test"
    placeholder   = "placekitten.com"
    width         = "600"
    height        = "400"
  }

  assert {
    condition     = aws_instance.aml2.instance_type == "t2.micro"
    error_message = "Instance type does not match the expected value"
  }

  assert {
    condition     = aws_instance.aml2.subnet_id == "subnet-0bb1c79de3EXAMPLE"
    error_message = "Subnet ID does not match the expected value"
  }

  assert {
    condition     = aws_instance.aml2.tags.Name == "test-instance"
    error_message = "Instance name does not match the expected value"
  }

  assert {
    condition     = aws_instance.aml2.public_dns != ""
    error_message = "EC2 instance must be in a VPC that has public DNS hostnames enabled."
  }
}