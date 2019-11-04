resource "google_compute_network" "vpc" {
    name = var.gcp_network_name
    description = "A VPC for hosting the GKE app"
    auto_create_subnetworks = false
    routing_mode = "REGIONAL"
    delete_default_routes_on_create = true
}