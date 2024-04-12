# Outputs file
output "ec2_url" {
  value = "http://${aws_eip.eip.public_dns}"
}

output "ec2_ip" {
  value = "http://${aws_eip.eip.public_ip}"
}

output "ec2_subnet_id" {
  value = aws_instance.aml2.subnet_id
}
