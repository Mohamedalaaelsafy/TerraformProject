module "network" {
  source      = "./modules/network"
  region      = var.region
  cidr_block  = var.cidr_block
  subnet_cidr = var.subnet_cidr
  subnet_azs  = var.subnet_azs
  subnet_name = var.subnet_name
  sg_name     = var.sg_name
  sg_desc     = var.sg_desc
  sg_tags     = var.sg_tags
  sg_ports    = var.sg_ports
}
