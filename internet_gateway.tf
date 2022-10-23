resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.name.id

  tags = {
    Name = "IG"
  }
}