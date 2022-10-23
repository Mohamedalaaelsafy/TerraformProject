provider "aws" {
  profile = "default"
  region  = var.region
}

# module "network-module" {
#   source = "./modules/network"
# } 