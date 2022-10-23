resource "aws_eip" "elastic_ip" {
  vpc = true
}
resource "aws_nat_gateway" "ng" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.subnet_1_public.id
  tags = {
    Name = "NGW"
  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "IG"
  }
}
