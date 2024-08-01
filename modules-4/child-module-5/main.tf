resource "aws_vpc" "white-1" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "white-1"
  }
}