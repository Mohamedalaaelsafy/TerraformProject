module "network" {
  source      = "./modules/network"
  region      = var.region
  cidr_block  = var.cidr_block
  subnet_cidr = var.subnet_cidr
  subnet_azs1  = var.subnet_azs[0]
  subnet_azs2 = var.subnet_azs[1]
  subnet_name = var.subnet_name[0]
  sg_name     = var.sg_name[0]
  sg_desc     = var.sg_desc[0]
  sg_tags     = var.sg_tags[0]
}
