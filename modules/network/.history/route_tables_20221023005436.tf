resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "public_route"
  }
}
resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ng.id
  }
  tags = {
    Name = "private_route"
  }
}



resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.main[0].id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.main[1].id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.main[2].id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.main[3].id
  route_table_id = aws_route_table.private_route.id
}