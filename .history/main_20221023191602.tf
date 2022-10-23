module "network" {
  count = 4
  source      = "./modules/network"
  region      = var.region
  cidr_block  = var.cidr_block
  subnet_cidr = var.subnet_cidr
  subnet_azs  = element(var.subnet_azs,count.index)
  subnet_name = var.subnet_name[0]
  sg_name     = var.sg_name[0]
  sg_desc     = var.sg_desc[0]
  sg_tags     = var.sg_tags[0]
  sg_port_ssh = var.sg_ports[0]
  sg_port_app = var.sg_ports[1]
}
