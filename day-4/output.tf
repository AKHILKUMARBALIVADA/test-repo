output "instance_ip" {
  value = aws_instance.red-1.public_ip
}

output "vpc_id" {
  value = aws_vpc.red-12.id
}

output "internet_gateway" {
  value = aws_internet_gateway.red-123.id
}