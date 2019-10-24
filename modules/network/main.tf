resource "google_compute_network" "vpc" {
    name = var.gcp_network_name
    description = "A VPC for hosting the GKE app"
    auto_create_subnetworks = false
    routing_mode = "REGIONAL"
    delete_default_routes_on_create = true
}

resource "google_compute_subnetwork" "public_subnet" {
    name = var.public_subnet_name
    network = google_compute_network.vpc.self_link
    ip_cidr_range = var.public_subnet_cidr_ip
    region = var.region

    secondary_ip_range {
        range_name    = "container-range-1"
        ip_cidr_range = "172.20.0.0/16"
    }

    secondary_ip_range {
        range_name    = "service-range-1"
        ip_cidr_range = "10.200.0.0/16"
    }
}

resource "google_compute_subnetwork" "private_subnet" {
    name = var.private_subnet_name
    network = google_compute_network.vpc.self_link
    ip_cidr_range = var.private_subnet_cidr_ip
    region = var.region
}