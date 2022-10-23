resource "aws_subnet" "subnet_1_public" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.subnet_cidr1
  availability_zone = var.subnet_azs1
  tags = {
    Name = "subnet_1_public"
  }
}

resource "aws_subnet" "subnet_1_private" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.subnet_cidr2
  availability_zone = var.subnet_azs2
  tags = {
    Name = "subnet_1_private"
  }
}

resource "aws_subnet" "subnet_2_public" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.subnet_cidr3
  availability_zone = var.subnet_azs1
  tags = {
    Name = "subnet_2_public"
  }
}

resource "aws_subnet" "subnet_2_private" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.subnet_cidr4
  availability_zone = var.subnet_azs2
  tags = {
    Name = "subnet_2_private"
  }
}