provider "google" {
    credentials = "${file("../../../../plinthos-sa.json")}"
    project = "plinthos"
    region = "europe-west1"
    zone = "europe-west1a"
}

module "network" {
  source = "../modules/network"

  vpc_name = "${var.vpc_name}"

#   cidr = "${var.cidr}"
#   azs = "${var.azs}"
#   public_subnets = "${var.public_subnets}"
}