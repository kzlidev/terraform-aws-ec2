
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "ami_validation" {
  variables {
    ami_id = "ami-0097cc7843f764ef5"
  }

  assert {
    condition     = data.aws_ami.amazon_linux.id == "ami-0097cc7843f764ef5"
    error_message = "AMI ID does not match the expected value"
  }
}