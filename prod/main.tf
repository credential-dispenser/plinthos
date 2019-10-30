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

  # secondary_ip_range {
  #     range_name    = "container-range-1"
  #     ip_cidr_range = "172.20.0.0/16"
  # }
  # secondary_ip_range {
  #     range_name    = "service-range-1"
  #     ip_cidr_range = "10.200.0.0/16"
  # }


# module "network" {
#   source = "../modules/network"

#   gcp_network_name = var.gcp_network_name
#   public_subnet_name = var.public_subnet_name
#   private_subnet_name = var.private_subnet_name

#   public_subnet_cidr_ip = var.public_subnet_cidr_ip
#   private_subnet_cidr_ip = var.private_subnet_cidr_ip

#   region = var.region

#   dest_range = var.dest_range
#   next_hop_gateway = var.next_hop_gateway
# }

# module "gke" {
#   source = "../modules/gke"

#   gke_cluster_name = var.gke_cluster_name
#   gcp_network_name = var.gcp_network_name
#   public_subnet_name = var.public_subnet_name
#   cluster_secondary_range_name = module.network.cluster_secondary_range_name
#   services_secondary_range_name = module.network.services_secondary_range_name
#   region = var.region
#   project = var.project
#   zone = var.zone
#   master_username = var.master_username
#   master_password = var.master_password
#   gke_node_pool_name_1 = var.gke_node_pool_name_1
#   node_count = var.node_count
#   machine_type = var.machine_type
#   office_ip = var.office_ip
# }