#########################SSH-KEY
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "aws_key" {
  key_name   = "terraform"
  public_key = tls_private_key.example.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.example.private_key_pem}' > ./myKey.pem"
  }
}

variable "ec2_public_ip" {
  default = [true, false]
}
resource "aws_instance" "ec2" {
  count                       = 2
  ami                         = "ami-09d56f8956ab235b3"
  instance_type               = "t2.micro"
  availability_zone           = element(var.subnet_azs, count.index)
  subnet_id                   = aws_subnet.main[count.index].id
  key_name                    = aws_key_pair.aws_key.key_name
  associate_public_ip_address = var.ec2_public_ip[count.index]
  security_groups             = ["${aws_security_group.allow_ssh[count.index].id}"]
  tags = {
    Name = "${element(var.ec2_names, count.index)}"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ./ec2_public_ips"
  }
}

