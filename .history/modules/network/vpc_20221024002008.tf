resource "aws_vpc" "vpc" {
  cidr_block = "11.0.0.0/16"
  tags = {
    Name = "vpc_terraform"
  }
}
