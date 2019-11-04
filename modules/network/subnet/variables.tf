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

# variable "ip_cidr_ranges" {
#     type = map(list)
#     default = {
#         gg = ["172.20.0.0/16", "172.20.0.0/16"],
#         wp = []
#     }
#     # default = [["172.20.0.0/16", "172.20.0.0/16"],[]]
# }

# variable "range_names" {
#     type = list(string)
#     default = [["container-range-1", "service-range-1"],[]]
# }