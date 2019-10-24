variable "gcp_network_name" {
    description = "Name of the VPC to be used"
}

variable "public_subnet_name" {
    description = "Name of the Public Subnet to be used"
}

variable "private_subnet_name" {
    description = "Name of the Private Subnet to be used"
}

variable "public_subnet_cidr_ip" {
    description = "CIDR IP for the Public Subnet"
}

variable "private_subnet_cidr_ip" {
    description = "CIDR IP for the private Subnet"
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