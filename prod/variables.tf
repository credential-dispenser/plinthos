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