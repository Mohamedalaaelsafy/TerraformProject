variable "ec2_names" {
  default = ["server_public","server_public"]
}


resource "aws_ec2_host" "ec2" {
  count = 2
  instance_type     = "t2.micro"
  availability_zone = "${element(var.subnet_azs, count.index)}"
  host_recovery     = "on"
  auto_placement    = "on"
  vpc_id = aws_vpc.name.id
  tags = {
    Name = "${element(var.ec2_names, count.index)}"
  }
}
