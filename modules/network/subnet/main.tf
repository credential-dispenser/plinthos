resource "google_compute_subnetwork" "subnet" {
    depends_on = [var.vpc_component]

    for_each = var.subnets

    network = var.vpc_component.self_link
    region = var.region

    name = each.value[0]
    ip_cidr_range = each.value[1]
    
    # dynamic "secondary_ip_range" {

    #     for_each = [for s in var.subnets: {
    #     count = length(var.subnet_names)

    #         name = s.subnet_name
    #         cidr_ip = s.cidr_ip
    #     }]

    #     content {
    #         name = subnet.value.name
    #         ip_cidr_range = subnet.value.cidr_ip
    #     }
    # }
    
    
    # range_name_1 = s.range_name[0]
    # secondary_ip_range {
    #     range_name = s.range_name[0]
    #     ip_cidr_range = s.cidr_ip[0]
    # }

    # secondary_ip_range {
    #     range_name = s.range_name[1]
    #     ip_cidr_range = s.cidr_ip[1]
    # }
}