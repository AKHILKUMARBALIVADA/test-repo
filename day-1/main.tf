# resource "aws_instance" "orange-1" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"
#   key_name      = "sivapem-1"
#   tags = {
#     Name = "orange-1"
#   }
# }

resource "aws_subnet" "orange-12" {
  cidr_block = "10.0.64.0/18"
  vpc_id = data.aws_vpc.my-vpc-2.id
  tags = {
    Name = "orange-12"
  }
}