module "vpc_modules" {
  source = "./modules/network"
  cidr_block = var.cidr_block
  tags = {
    Name = "terraform"
  }
}

# resource "aws_vpc" "name" {
  # cidr_block = var.cidr_block
  # tags = {
    # Name = "terraform"
  # }
# }   