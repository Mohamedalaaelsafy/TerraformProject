resource "aws_subnet" "subnet_1_public" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.cidr_block
  availability_zone = var.subnet_azs
  tags = {
    Name = "${var.subnet_name}"
  }
}

resource "aws_subnet" "subnet_1_private" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}

resource "aws_subnet" "subnet_2_public" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}

resource "aws_subnet" "subnet_2_private" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}