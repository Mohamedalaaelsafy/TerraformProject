// Generate Key
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "aws_key" {
  key_name   = "terraform"
  public_key = tls_private_key.example.public_key_openssh
  provisioner "local-exec" {
    command = "echo '${tls_private_key.example.private_key_pem}' > ./terraform.pem"
  }
}


// Declare Instances
resource "aws_instance" "ec2_public" {
  ami                         = var.ec2_ami
  instance_type               = "t2.micro"
  availability_zone           = var.az_1a
  subnet_id                   = module.network.subnet_1_public
  key_name                    = aws_key_pair.aws_key.key_name
  associate_public_ip_address = true
  security_groups             = module.network.security_group_app
  tags = {
    Name = "BASTION"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ./ec2_public_ips"
  }
}


resource "aws_instance" "ec2_private" {
  ami                         = var.ec2_ami
  instance_type               = "t2.micro"
  availability_zone           = var.az_1b
  subnet_id                   = module.network.subnet_2_private
  key_name                    = aws_key_pair.aws_key.key_name
  associate_public_ip_address = true
  security_groups             = module.network.security_group_app
  tags = {
    Name = "BASTION"
  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ./ec2_public_ips"
  }
}

