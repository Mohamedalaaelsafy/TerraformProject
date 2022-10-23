variable "subnet_cidr" {
  default = ["11.0.0.0/24", "11.0.1.0/24", "11.0.3.0/24", "11.0.4.0/24"]
}

variable "subnet_azs" {
  default = ["us-east-1a", "us-east-1b", "us-east-1a", "us-east-1b"]
}

variable "subnet_name" {
  default = ["public1", "private1", "public2", "private2"]
}

resource "aws_subnet" "main" {
  count             = 4
  vpc_id            = aws_vpc.name.id
  cidr_block        = element(var.subnet_cidr, count.index)
  availability_zone = element(var.subnet_azs, count.index)
  tags = {
    Name = "${element(var.subnet_name, count.index)}"
  }
}