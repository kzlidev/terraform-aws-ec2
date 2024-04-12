# Outputs file
output "ec2_url" {
  value = "http://${aws_eip.eip.public_dns}"
}

output "ec2_ip" {
  value = "http://${aws_eip.eip.public_ip}"
}
