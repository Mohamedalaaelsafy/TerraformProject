variable "gs_name" {
  default = ["allow_ssh", "allow_ssh_vpc"]
}
variable "gs_desc" {
  default = ["Allow SSH inbound traffic", "Allow SSH inbound traffic from VPC"]
}
variable "gs_cider" {
  default = ["0.0.0./0", "${aws_vpc.name.cidr_block}"]
}
locals {
tags = {
        any_ipv4 = "0.0.0./0"
        vpc_ipv4 = "${aws_vpc.name.cidr_block}"
       }
}


variable "gs_tags" {
  default = ["allow_ssh", "allow_ssh_vpc"]
}




resource "aws_security_group" "allow_ssh" {
  count = 2
  name  = "${element(var.gs_name, count.index)}"
  description = "${element(var.gs_desc, count.index)}"
  vpc_id = aws_vpc.name.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["${}"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${element(var.gs_tags, count.index)}"
  }
}