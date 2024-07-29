resource "aws_instance" "orange-1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = "sivapem-1"
  tags = {
    Name = "orange-1"
  }
}