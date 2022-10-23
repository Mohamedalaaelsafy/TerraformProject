resource "aws_security_group" "allow_ssh" {
  name        = "Allow SSH"
  description = "Allow SSH Port 22 inbound"
  vpc_id      = aws_vpc.vpc.id
}