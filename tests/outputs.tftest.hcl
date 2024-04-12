
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

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