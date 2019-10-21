terraform {
  required_version = ">= 0.12"
}

resource "google_container_cluster" "gke" {
    name = var.gke_name
    description = "The GKE Cluster for hosting ermis"
    location = "europe-west2-a"

    release_channel = "REGULAR"

    remove_default_node_pool = true
    initial_node_count = 1

    master_auth {
        username = ""
        password = ""

        client_certificate_config {
        issue_client_certificate = false
        }
    }
}

resource "google_container_node_pool" "gke_test_nodes" {
  name       = var.gke_node_pool_name
  location   = "europe-west2-a"
  cluster    = "${google_container_cluster.gke.name}"
  node_count = 1

  istio_config = "auth"

  node_config {
    preemptible  = true
    machine_type = "g1-small"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}