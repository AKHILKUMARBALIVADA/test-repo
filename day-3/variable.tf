variable "aws_instance" {
  type = string
  default = "t2.micro"
  description = "create instance"
}

variable "aws_vpc" {
  type = string
  default = "10.10.0.0/16"
  description = "create vpc"
}

variable "aws_subnet" {
  type = string
  default = "10.10.64.0/18"
  description = "create subnet"
}