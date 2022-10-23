module "vpc_modules" {
  source = "./modules/network"
  vpc_cider_block = var.cidr_block
}

# resource "aws_vpc" "name" {
  # cidr_block = var.cidr_block
  # tags = {
    # Name = "terraform"
  # }
# }   