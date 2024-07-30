resource "aws_vpc" "blue-12" {
  cidr_block = var.aws_vpc
  tags = {
    Name = "blue-12"
  }
}