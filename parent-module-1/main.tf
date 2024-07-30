module "vpc" {
 source = "../modules-1/child-module-2"
  aws_vpc = var.vpc
}