resource "aws_vpc" "name" {
  cidr_block = cidr_block
  tags = {
    Name = "terraform"
  }
}   