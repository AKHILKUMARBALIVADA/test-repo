resource "aws_instance" "red-1" {
 ami = data.aws_ami.ubuntu.id
 instance_type = var.aws_instance
 tags = local.tags
}

resource "aws_vpc" "red-12" {
  cidr_block = var.aws_vpc
  tags = local.tags
}

resource "aws_internet_gateway" "red-123" {
  vpc_id = aws_vpc.red-12.id
  tags = local.tags
}