resource "google_container_cluster" "gke" {
  provider = "google-beta"

  name = var.gke_cluster_name

  location = var.zone
  network = var.gcp_network_name
  subnetwork = var.public_subnet_name
  
  remove_default_node_pool = true
  initial_node_count = 1

  #Release channels provide a way to manage automatic upgrades for your cluster.
  # release_channel = "REGULAR"

  addons_config {
    #Istio is a service mesh that provides monitoring, traffic control and security between the services running in Kubernetes Engine.
    istio_config {
      disabled = false
    }
  }

  #Setting it on the plinthos-vpc
  ip_allocation_policy {
    cluster_secondary_range_name  = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
  }

  master_auth {
    username = var.master_username
    password = var.master_password

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  master_authorized_networks_config {
    cidr_blocks {
      display_name = "Office IP"
      cidr_block = var.office_ip
    }
  }
}

resource "google_container_node_pool" "gke_preemptible_nodes" {
  name       = var.gke_node_pool_name_1
  cluster    = google_container_cluster.gke.name
  node_count = var.node_count

  node_config {
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}