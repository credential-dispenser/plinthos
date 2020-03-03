variable "vpc_component" {
    description = "Name of the VPC to be used"
}

variable "region" {
    description = "Region to deploy the subnets"
}

variable "subnets" {
    description = "Subnet specs"
}

# variable "secondary_ips" {
#     default = [
#         {
#             subnet_name = "public-subnet-1"
#             cidr_ip = "10.1.0.0/20"
#             secondary_range_name = ["container-range-1", "service-range-1"]
#             secondary_cidr_ip = ["172.20.0.0/16", "10.200.0.0/16"]
#         },
#         {
#             subnet_name = "private-subnet-1"
#             cidr_ip = "10.2.0.0/20"
#             secondary_range_name = []
#             secondary_cidr_ip = []
#         }
#     ]
# }

# variable "secondary_cidrs" {
#   default = [
#     {
#         range_name = "container-range-1"
#         cidr_ip = "172.20.0.0/16"
#     },
#     {
#         range_name = "service-range-1"
#         cidr_ip = "10.200.0.0/16"
#     }
#   ]
# }
# variable "subnet_names" {
#     description = "Name of the Public Subnet to be used"
#     type = list(string)
# }

# variable "subnet_cidr_ips" {
#     description = "CIDR IP for the Public Subnet"
#     type = list(string)
# }

# variable "ip_cidr_ranges" {
#   default = {
#     gg = {
#       range_name = "container-range-1"
#       ip_cidr_range = "172.20.0.0/16"
#     }
#     wp = {
#       range_name = "container-range-1"
#       ip_cidr_range = ""10.200.0.0/16""
#     }
#   }
# }

# variable "ip_cidr_ranges" {
#     type = map(list)
#     default = {
#         gg = ["172.20.0.0/16", "10.200.0.0/16"],
#         wp = []
#     }
#     # default = [["172.20.0.0/16", "10.200.0.0/16"],[]]
# }

# variable "range_names" {
#     type = list(string)
#     default = [["container-range-1", "service-range-1"],[]]
# }