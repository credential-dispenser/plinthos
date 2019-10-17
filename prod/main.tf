provider "google" {
    credentials = "${file("../../../../plinthos-sa.json")}"
    project = "plinthos"
    region = "europe-west1"
    zone = "europe-west1a"
}

module "network" {
  source = "../modules/network"

  vpc_name = "${var.vpc_name}"
  public_subnet_name = "${var.public_subnet_name}"
  private_subnet_name = "${var.private_subnet_name}"

  public_subnet_cidr_ip = "10.1.0.0/20"
  private_subnet_cidr_ip = "10.2.0.0/20"

#   azs = "${var.azs}"
}