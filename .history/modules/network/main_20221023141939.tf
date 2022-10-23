terraform {
  required_version = ">= 1.3.3"
}

resource "aws_vpc" "aws_vpc" {
  cidr_block = var.cidr_block
}

