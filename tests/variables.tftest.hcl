
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "variables_validation" {
  variables {
    prefix      = "test"
    region      = "ap-southeast-1"
    instance_type = "t2.micro"
    height      = "400"
    width       = "600"
    placeholder = "placekitten.com"
    vpc_id      = "vpc-0bb1c79de3EXAMPLE"
    subnet_id   = "subnet-0bb1c79de3EXAMPLE"
    ami_id      = "ami-0097cc7843f764ef5"
  }

  assert {
    condition     = var.prefix == "test"
    error_message = "Prefix does not match the expected value"
  }

  assert {
    condition     = var.region == "ap-southeast-1"
    error_message = "Region does not match the expected value"
  }

  assert {
    condition     = var.instance_type == "t2.micro"
    error_message = "Instance type does not match the expected value"
  }

  assert {
    condition     = var.height == "400"
    error_message = "Height does not match the expected value"
  }

  assert {
    condition     = var.width == "600"
    error_message = "Width does not match the expected value"
  }

  assert {
    condition     = var.placeholder == "placekitten.com"
    error_message = "Placeholder does not match the expected value"
  }

  assert {
    condition     = var.vpc_id == "vpc-0bb1c79de3EXAMPLE"
    error_message = "VPC ID does not match the expected value"
  }

  assert {
    condition     = var.subnet_id == "subnet-0bb1c79de3EXAMPLE"
    error_message = "Subnet ID does not match the expected value"
  }

  assert {
    condition     = var.ami_id == "ami-0097cc7843f764ef5"
    error_message = "AMI ID does not match the expected value"
  }
}