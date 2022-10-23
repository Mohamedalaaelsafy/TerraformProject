resource "aws_security_group" "allow_ssh" {
  count       = 2
  name        = element(var.sg_name, count.index)
  description = element(var.sg_desc, count.index)
  vpc_id      = aws_vpc.name.id

  ingress {
    description = element(var.sg_desc, count.index)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${local.default[count.index]}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${element(var.sg_tags, count.index)}"
  }
}
