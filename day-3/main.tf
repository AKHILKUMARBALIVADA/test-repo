resource "aws_instance" "green-1" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.aws_instance
  tags = {
    Name = "green-1"
  }
}

resource "aws_vpc" "green-12" {
  cidr_block = var.aws_vpc
  tags = {
    Name = "green-12"
  }
}

resource "aws_subnet" "green-123" {
  vpc_id = aws_vpc.green-12.id
  cidr_block = var.aws_subnet
  tags = {
    Name = "green-123"
  }
}