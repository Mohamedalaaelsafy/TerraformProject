terraform {
  required_version = ">= 1.3.3"
}

resource "aws_vpc" "aws_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = value.tags
  }
}

# resource "aws_subnet" "aws_subnet" {
#   count = var.count
#   vpc_id = aws_vpc.aws_vpc.id
#   cidr_block = var.aws_subnet_cider_block
#   availability_zone = var.aws_subnet_azs
# }
