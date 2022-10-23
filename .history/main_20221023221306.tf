module "network" {
  source      = "./modules/network"
  region      = var.region
  subnet_azs1  = var.subnet_azs[0]
  subnet_azs2 = var.subnet_azs[1]
}
