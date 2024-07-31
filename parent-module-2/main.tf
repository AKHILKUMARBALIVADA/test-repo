module "vpc" {
  source = "../modules-2/child-module-3"
  vpc-1 = var.vpc-2
}

resource "aws_subnet" "yellow-12" {
  vpc_id = module.vpc.vpc_id
  cidr_block = var.subnet-1
  tags = {
    Name = "yellow-12"
  }
}

