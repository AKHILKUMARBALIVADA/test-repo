variable "aws_instance" {
 type =  string
 default = "t2.micro"
 description = "create instance"
}

variable "aws_vpc" {
 type =  string
 default = "192.10.64.0/18"
 description = "create vpc"
}