resource "aws_instance" "apple-1" {
  ami           = "ami-068e0f1a600cd311c"
  instance_type = "t2.micro"
  key_name      = "sivapem-1"
  tags = {
    Name = "apple-1"
  }
}