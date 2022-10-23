resource "aws_subnet" "main" {
  count             = 4
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tag = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}