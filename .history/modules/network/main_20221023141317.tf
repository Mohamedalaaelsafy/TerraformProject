terraform {
  required_version = ">= 1.3.3"
}

resource "aws_subnet" "main" {
  count= 4
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block
}

module "alaa-network-module" {
  source = "../modules"
}