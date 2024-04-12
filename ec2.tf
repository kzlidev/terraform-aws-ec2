resource "aws_instance" "aml2" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  vpc_security_group_ids      = [data.aws_security_group.default.id]
  subnet_id                   = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = "${var.prefix}-instance"
  }

  user_data = templatefile("${path.module}/script/userdata.tftpl",
    {
      PREFIX      = var.prefix,
      TIMESTAMP   = timestamp(),
      PLACEHOLDER = var.placeholder,
      WIDTH       = var.width,
      HEIGHT      = var.height
    }
  )

  lifecycle {
    # The AMI ID must refer to an AMI that contains an operating system
    # for the `x86_64` architecture.
    precondition {
      condition     = data.aws_ami.amazon_linux.architecture == "x86_64"
      error_message = "The selected AMI must be for the x86_64 architecture."
    }

    # The EC2 instance must be allocated a public DNS hostname.
    postcondition {
      condition     = self.public_dns != ""
      error_message = "EC2 instance must be in a VPC that has public DNS hostnames enabled."
    }
  }
}

resource "aws_eip" "eip" {
  instance = aws_instance.aml2.id
  domain   = "vpc"
}
