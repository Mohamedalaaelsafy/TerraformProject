resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }
  tags = {
    Name = "public_route"
  }
}

resource "aws_route_table" "public_private" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gateway.id
  }
  tags = {
    Name = "private_route"
  }
}


resource "aws_route_table_association" "route_public1" {
  subnet_id      = aws_subnet.subnet_1_public.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "route_public2" {
  subnet_id      = aws_subnet.subnet_2_public.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "route_private1" {
  subnet_id      = aws_subnet.subnet_1_private.id
  route_table_id = aws_route_table.public_route.id
}

