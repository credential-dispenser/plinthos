module "vpc" {
  source = "../modules/network/vpc"

  gcp_network_name = var.gcp_network_name
}

module "subnets" {
  source = "../modules/network/subnet"

  region = var.region
  vpc_component = module.vpc.vpc_component
  subnets = var.subnets
}