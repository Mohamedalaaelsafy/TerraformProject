resource "aws_subnet" "subnet_1_public" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "11.0.0.0/24"
  availability_zone = var.subnet_azs1
  tags = {
    Name = "subnet_1_public"
  }
}