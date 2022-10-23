module "network" {
  source = "./modules/network"
  az_1a  = var.az_1a
  az_1b  = var.az_1b
}