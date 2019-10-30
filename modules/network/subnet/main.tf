resource "google_compute_subnetwork" "subnet" {
    depends_on = [var.vpc_component]

    count = length(var.subnet_names)

    name = var.subnet_names[count.index]
    network = var.vpc_component.self_link
    ip_cidr_range = var.subnet_cidr_ips[count.index]
    region = var.region
}