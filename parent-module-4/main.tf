module "vpc" {
  source = "../modules-4/child-module-5"
}

resource "aws_subnet" "white-12" {
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  depends_on              = [module.vpc]
  tags = {
    Name = "white-12"
  }
}

resource "aws_internet_gateway" "white-123" {
  vpc_id = module.vpc.vpc_id
  tags = {
    Name = "white-123"
  }
}

resource "aws_route_table" "white-1234" {
  vpc_id = module.vpc.vpc_id


  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.white-123.id
  }
}

   resource "aws_route_table_association" "subnet_association" {
    subnet_id= aws_subnet.white-12.id
    route_table_id = aws_route_table.white-1234.id
    
  }
  
  resource "aws_security_group" "white-12345" {
    vpc_id = module.vpc.vpc_id

    ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    }
  


resource "aws_instance" "akhilkumar" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = "sivapem-1"
  vpc_security_group_ids = [aws_security_group.white-12345.id]
  subnet_id              = aws_subnet.white-12.id
  depends_on             = [aws_security_group.white-12345]
  tags = {
    Name = "akhilkumar"
  }
}