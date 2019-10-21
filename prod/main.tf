module "network" {
  source = "../modules/network"

  gcp_network_name = var.gcp_network_name
  public_subnet_name = var.public_subnet_name
  private_subnet_name = var.private_subnet_name

  public_subnet_cidr_ip = var.public_subnet_cidr_ip
  private_subnet_cidr_ip = var.private_subnet_cidr_ip

  subnet_region = var.subnet_region
}