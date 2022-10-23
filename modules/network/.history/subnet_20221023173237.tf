resource "aws_subnet" "main" {
  count             = 4
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}