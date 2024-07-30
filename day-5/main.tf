resource "aws_instance" "red-1" {
 ami = data.aws_ami.ubuntu.id
 instance_type = var.aws_instance
 count = 3
 tags = {
  Name = "red-1-${count.index}"
}
}

resource "aws_vpc" "red-12" {
  cidr_block = var.aws_vpc
  count = 2
  tags = {
    Name = "red-12-${count.index}"
  }
}