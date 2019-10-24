output "cluster_secondary_range_name" {
  value = google_compute_subnetwork.public_subnet.secondary_ip_range.0.range_name
}

output "services_secondary_range_name" {
  value = google_compute_subnetwork.public_subnet.secondary_ip_range.1.range_name
}