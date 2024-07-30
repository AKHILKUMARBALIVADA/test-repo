resource "aws_instance" "blue-1" {
 ami = data.aws_ami.ubuntu.id
 instance_type = var.aws_instance
 tags = {
   Name = "blue-1"
 }
}