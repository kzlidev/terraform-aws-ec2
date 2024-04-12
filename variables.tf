variable "prefix" {
  description = "This prefix will be included in the name of most resources."
}

variable "region" {
  description = "The region where the resources are created."
  default     = "ap-southeast-1"
}

variable "instance_type" {
  description = "Specifies the AWS instance type."
  default     = "t2.micro"
}

variable "height" {
  default     = "400"
  description = "Image height in pixels."
}

variable "width" {
  default     = "600"
  description = "Image width in pixels."
}

variable "placeholder" {
  default     = "placekitten.com"
  description = "Image-as-a-service URL. Some other fun ones to try are fillmurray.com, placecage.com, placebeard.it, loremflickr.com, baconmockup.com, placeimg.com, placebear.com, placeskull.com, stevensegallery.com, placedog.net"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to deploy into"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID to deploy into"
}

variable "ami_id" {
  type        = string
  description = "AMI ID to deploy"
  default     = "ami-0097cc7843f764ef5"
}

