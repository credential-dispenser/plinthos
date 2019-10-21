terraform {
  required_version = ">= 0.12"
}

resource "google_container_cluster" "gke" {
    name = var.gke_name
    description = "A VPC for hosting the GKE app"
    auto_create_subnetworks = false
    routing_mode = "REGIONAL"
    delete_default_routes_on_create = true
}