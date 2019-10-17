variable "vpc_name" {
    description = "Name of the VPC to be used"
    default = "plinthos-vpc"
}

variable "public_subnet_name" {
    description = "Name of the Public Subnet to be used"
    default = "public-subnet-1"
}

variable "private_subnet_name" {
    description = "Name of the Private Subnet to be used"
    default = "private-subnet-1"
}