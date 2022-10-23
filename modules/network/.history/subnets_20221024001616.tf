resource "aws_subnet" "subnet_1_public" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.az_1a
  tags = {
    Name = "subnet_1_public"
  }
}

resource "aws_subnet" "subnet_2_public" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = var.az_1b
  tags = {
    Name = "subnet_1_public"
  }
}

resource "aws_subnet" "subnet_1_private" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.az_1a
  tags = {
    Name = "subnet_1_public"
  }
}

resource "aws_subnet" "subnet_1_public" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.az_1b
  tags = {
    Name = "subnet_1_public"
  }
}