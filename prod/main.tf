module "vpc" {
  source = "../modules/network/vpc"

  gcp_network_name = var.gcp_network_name
}

module "subnets" {
  source = "../modules/network/subnet"

  subnet_names = var.subnet_names
  vpc_component = module.vpc.vpc_component
  subnet_cidr_ips = var.subnet_cidr_ips
  region = var.region
}