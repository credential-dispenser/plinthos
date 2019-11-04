resource "google_compute_subnetwork" "subnet" {
    depends_on = [var.vpc_component]

    count = length(var.subnet_names)

    name = var.subnet_names[count.index]
    network = var.vpc_component.self_link
    ip_cidr_range = var.subnet_cidr_ips[count.index]
    region = var.region

    # secondary_ip_range {
    #     range_name = var.range_names[count.index].0
    #     ip_cidr_range = var.ip_cidr_ranges[count.index].0
    # }
    # secondary_ip_range {
    #     range_name = var.range_names[count.index].1
    #     ip_cidr_range = var.ip_cidr_ranges[count.index].1
    # }
}