resource "aws_eip" "elastic_ip" {
  vpc = true
}

resource "aws_nat_gateway" "ng" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id     = aws_subnet.subnet_1_private
  tags = {
    Name = "NGW"
  }
}