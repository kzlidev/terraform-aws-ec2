# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
mock_provider "aws" {}

variables {
  subnet_id = "subnet-0bb1c79de3EXAMPLE"
  prefix    = "test"
  vpc_id    = "vpc-1234"
}

run "outputs_validation" {
  assert {
    condition     = output.ec2_url != ""
    error_message = "EC2 URL should not be empty"
  }

  assert {
    condition     = output.ec2_ip != ""
    error_message = "EC2 IP should not be empty"
  }
}