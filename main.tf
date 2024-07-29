# resource "aws_instance" "apple-1" {
#   ami           = "ami-068e0f1a600cd311c"
#   instance_type = "t2.micro"
#   key_name      = "sivapem-1"
#   tags = {
#     Name = "apple-1"
#   }
# }
# resource "aws_vpc" "apple-12" {
#   cidr_block = "192.0.0.0/16"
#   tags = {
#     Name = "apple-12"
#   }
# }
resource "aws_subnet" "apple-123" {
  vpc_id = "vpc-060f406fff1da1a99"
  cidr_block = "172.31.64.0/18"
  tags = {
    Name = "apple123"
  }
}
