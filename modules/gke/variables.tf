variable "gke_name" {
    description = "Name of the GKE Name"
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