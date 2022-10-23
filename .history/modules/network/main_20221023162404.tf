terraform {
  required_version = ">= 1.3.3"
}

resource "aws_vpc" "aws_vpc" {
  cidr_block = var.vpc_cider_block
  tags = var.vpc_tags
  }


resource "aws_subnet" "aws_subnet" {
  count = var.vpc_count
  vpc_id = aws_vpc.aws_vpc.id
  cidr_block = var.aws_subnet_cider_block
  availability_zone = var.aws_subnet_azs
}


resource "aws_security_group" "aws_sg" {
  count = var.sg_count
  name = var.sg_name
  description = var.sg_desc
  vpc_id = var.sg_vpc_id
  ingress = [ {
    cidr_blocks = [ "value" ]
    description = "value"
    from_port = 1
    ipv6_cidr_blocks = [ "value" ]
    prefix_list_ids = [ "value" ]
    protocol = "value"
    security_groups = [ "value" ]
    self = false
    to_port = 1
  } ]
}