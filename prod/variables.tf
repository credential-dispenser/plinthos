variable "gcp_network_name" {
    description = "Name of the VPC to be used"
}

variable "subnets" {
    description = "Subnet specs"
}

variable "region" {
    description = "Region to deploy the subnets"
}

variable "credentials" {
    description = "Local path for credentials"
}

variable "project" {
    description = "Project name as set on GCP"
}

variable "zone" {
    description = "Zone to deploy infra on"
}

variable "master_username" {
    description = "Username to access the kubernetes cluster"
}

variable "master_password" {
    description = "Password to access the kubernetes cluster"
}

variable "gke_node_pool_name_1" {
    description = "Name for the first node pool"
}

variable "node_count" {
    description = "Number of nodes within the GKE cluster"
}

variable "machine_type" {
    description = "Choose the machine type"
}

variable "office_ip" {
    description = "Office IP"
}

variable "gke_cluster_name" {
    description = "Name of the GKE to be used"
}

variable "dest_range" {
    description = "Destination IP range"
}

variable "next_hop_gateway" {
    description = "Next Hop Gateway"
}