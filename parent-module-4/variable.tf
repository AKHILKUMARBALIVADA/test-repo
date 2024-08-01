variable "subnet_cidr" {
  type        = string
  default     = "192.0.128.0/18"
  description = "creating cidr for subnet"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "creating instance type for ec2-instance"
}