# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
variables {
  subnet_id = "subnet-0bb1c79de3EXAMPLE"
  prefix    = "test"
  vpc_id    = "vpc-1234"
}

run "ami_validation" {
  variables {
    ami_id = "ami-0097cc7843f764ef5"
  }

  assert {
    condition     = data.aws_ami.amazon_linux.id == "ami-0097cc7843f764ef5"
    error_message = "AMI ID does not match the expected value"
  }
}