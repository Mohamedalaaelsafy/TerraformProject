module "vpc_modules" {
  source = "./modules/network"
  
}

resource "aws_vpc" "name" {
  cidr_block = var.cidr_block
  tags = {
    Name = "terraform"
  }
}   