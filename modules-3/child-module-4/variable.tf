variable "cidr-1" {
  type = string
  default = "12.10.0.0/16"
  description = "create cidr for vpc"
}

variable "cidr-2" {
  type = string
  default = "12.10.128.0/17"
  description = "create cidr for subnet"
}