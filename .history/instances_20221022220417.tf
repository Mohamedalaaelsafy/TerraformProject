#########################SSH-KEY
resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "aws_key_pair" "aws_key" {
  key_name   = "terraform"
  public_key = tls_private_key.example.public_key_openssh
}

# provisioner "local-exec" { 
#     command = "echo '${tls_private_key.example.private_key_pem}' > ./myKey.pem"
# }

# #########################AWS-AMI
# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# #   owners = ["099720109477"] # Canonical
# }

#########################AWS-INSTANCE
variable "ec2_names" {
  default = ["server_public","server_private"]
}
resource "aws_instance" "ec2" {
  count = 2
  ami = "ami-09d56f8956ab235b3"
  instance_type     = "t2.micro"
  availability_zone = "${element(var.subnet_azs, count.index)}"
  subnet_id = aws_subnet.main[count.index].id
  key_name = "CICD"
#   aws_key_pair.aws_key.key_name
  associate_public_ip_address = true
  security_groups = ["${aws_security_group.allow_ssh[0].id}"]
  tags = {
    Name = "${element(var.ec2_names, count.index)}"
  }
}

