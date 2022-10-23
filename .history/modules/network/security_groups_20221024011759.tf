resource "aws_security_group" "security_group_shh" {
  name        = "Allow SSH"
  description = "Allow SSH Port 22 inbound"
  vpc_id      = aws_vpc.vpc.id

   ingress {
    description = "Allow SSH Port 22 inbound"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow SSH"
  }
}

resource "aws_security_group" "security_group_app" {
  name        = "Allow SSH & 3000"
  description = "Allow SSH Port 22 & 3000 inbound"
  vpc_id      = aws_vpc.vpc.id

   ingress {
    description = "Allow SSH Port 22 inbound"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

   ingress {
    description = "Allow SSH Port 3000 inbound"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Allow SSH & 3000"
  }
}