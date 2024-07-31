resource "aws_vpc" "yellow-1" {
cidr_block = var.vpc-1
tags = {
  Name = "yellow-1"
}
}