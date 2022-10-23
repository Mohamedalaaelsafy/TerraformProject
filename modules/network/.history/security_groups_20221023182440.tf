
locals {
  default = ["0.0.0.0/0", "${aws_vpc.name.cidr_block}"]
}


resource "aws_security_group" "allow_ssh" {
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = aws_vpc.name.id

  ingress {
    description = element(var.sg_desc, count.index)
    from_port   = var.sg_port_ssh
    to_port     = var.sg_port_ssh
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


resource "aws_security_group" "allow_ssh_vpc" {
  count       = 2
  name        = var.sg_name
  description = var.sg_desc
  vpc_id      = aws_vpc.name.id

  ingress {
    description = var.sg_desc
    from_port   = var.sg_port
    to_port     = var.sg_port
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.name.cidr_block}"]
  }

   ingress {
    description = element(var.sg_desc, count.index)
    from_port   = var.sg_port_app
    to_port     = var.sg_port_app
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.name.cidr_block}"]
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
