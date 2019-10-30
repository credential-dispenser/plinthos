variable "vpc_component" {
    description = "Name of the VPC to be used"
}

variable "subnet_names" {
    description = "Name of the Public Subnet to be used"
    type = list(string)
}

variable "subnet_cidr_ips" {
    description = "CIDR IP for the Public Subnet"
    type = list(string)
}

variable "region" {
    description = "Region to deploy the subnets"
}