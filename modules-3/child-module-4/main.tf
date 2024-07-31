resource "aws_vpc" "black-1" {
  cidr_block = var.cidr-1
  tags = {
    Name = "black-1"
  }
}

resource "aws_subnet" "black-12" {
  vpc_id = aws_vpc.black-1.id
  cidr_block = var.cidr-2
  tags = {
    Name = "black-12"
  }
}

resource "aws_internet_gateway" "black-123" {
  vpc_id = aws_vpc.black-1.id
  tags = {
    Name = "black-123"
  }
}